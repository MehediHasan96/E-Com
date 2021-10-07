from django.shortcuts import render, HttpResponseRedirect, get_object_or_404, redirect, Http404
from django.urls import reverse
from .models import author, article, comment, category, Customer, UserProfile, ShopCart, Order, BillingAddress, ProductAttribute
from django.core.paginator import Paginator
from django.db.models import Q
from django.contrib.auth import authenticate, login, logout
from .forms import createForm, registerUser, commentForm, categoryForm, CustomerForm, BillingForm
from django.contrib import messages
from django.contrib.auth.decorators import login_required
# Create your views here.


def index(request):

    post = article.objects.filter(active=True).all()
    search = request.GET.get('q')
    if search:
        post = post.filter(
            Q(title__icontains=search) |
            Q(body__icontains=search)
        )
    paginator = Paginator(post, 100)  # Show 25 contacts per page

    page = request.GET.get('page')
    total_article = paginator.get_page(page)
    query = category.objects.all()
    homecat = category.objects.all().order_by('id')[:2]
    latest = article.objects.all().order_by('-id')[:10]
    popular = article.objects.order_by('-hits')[:3]

    context = {
        "post": total_article,
        "query": query,
        "latest": latest,
        "homecat": homecat,
        'popular': popular,


    }

    return render(request, "index.html", context)


def detail(request, id):
    getComment = comment.objects.filter(post=id).order_by('-id')[:3]
    count = comment.objects.filter(post=id).only('id').count()
    post = get_object_or_404(article, pk=id)
    related = article.objects.filter(category=post.category).exclude(id=id)[:4]

    post = article.objects.get(id=id)
    colors = ProductAttribute.objects.filter(article=post).values(
        'color__id', 'color__title', 'color__color_code').distinct()
    sizes = ProductAttribute.objects.filter(article=post).values(
        'size__id', 'size__title', 'price', 'color__id').distinct()
    post.hits = post.hits+1
    post.save()

    form = commentForm(request.POST or None)
    if form.is_valid():
        instance = form.save(commit=False)
        instance.post = post
        instance.save()

        messages.success(request, 'Comment is Create successfully')

    context = {
        "post": post,
        "related": related,
        "form": form,
        "comment": getComment,
        "count": count,
        "colors": colors,
        "sizes": sizes,



    }
    return render(request, "detail.html", context)


def categorys(request, name):

    cat = get_object_or_404(category, name=name)
    post = article.objects.filter(category=cat.id)
    query = category.objects.all()

    paginator = Paginator(post, 18)  # Show 25 contacts per page
    page = request.GET.get('page')
    total_article = paginator.get_page(page)

    return render(request, "category.html", {"post": total_article, "cat": cat, "query": query})


def wishlist(request):
    return render(request, 'wishlist.html')


def cart(request, id):

    return render(request, 'cart.html')


def checkouts(request):
    if request.method == "POST":
        first_name = request.POST.get('first_name')
        last_name = request.POST.get('last_name')
        address = request.POST.get('address')
        email = request.POST.get('email')
        phone = request.POST.get('phone')
        city = request.POST.get('city')
        location = request.POST.get('location')
        notes = request.POST.get('notes')
        Customer.objects.create(
            first_name=first_name,
            last_name=last_name,
            address=address,
            email=email,
            city=city,
            location=location,
            notes=notes,
        )
        messages.add_message(request, messages.SUCCESS,
                             'Checkout successfully Done')
    return render(request, 'checkouts.html')


# def logins(request):
    # return render(request, 'logins.html')

def logins(request):
    if request.user.is_authenticated:
        return redirect('index')
    else:
        if request.method == "POST":
            user = request.POST.get('user')
            password = request.POST.get('pass')
            auth = authenticate(request, username=user, password=password)
            if auth is not None:
                login(request, auth)
                current_user = request.user
                userprofile = UserProfile.objects.get(user_id=current_user.id)
                request.session['userimage'] = userprofile.image.url

                return redirect('index')
            else:
                messages.add_message(
                    request, messages.ERROR, 'Username or password mismatch')
                return render(request, "logins.html")
    return render(request, "logins.html")


# def register(request):
    # return render(request, 'register.html')

def register(request):
    if request.method == 'POST':
        form = registerUser(request.POST or None)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password1')
            user = authenticate(username=username, password=password)
            login(request, user)

            current_user = request.user
            data = UserProfile()
            data.user_id = current_user.id
            data.image = "unnamed.png"
            data.save()
            messages.success(request, 'Your Account has been Updated')
            return HttpResponseRedirect('/register')
        else:
            messages.warning(request, form.errors)
            return HttpResponseRedirect('/')

    form = registerUser()
    context = {'form': form,

               }

    return render(request, 'register.html', context)


def getlogout(request):
    logout(request)
    return redirect('index')


def profile(request):
    return render(request, 'profile.html')


@login_required(login_url='/user/login')
def Add_to_Shoping_cart(request, id):

    item = get_object_or_404(article, id=id)
    print("Item")
    print(item)
    order_item = ShopCart.objects.get_or_create(
        article=item, user=request.user, purchased=False)
    print("Order Item Object:")
    print(order_item)
    print(order_item[0])
    order_qs = Order.objects.filter(user=request.user, ordered=False)

    # print(order_qs[0])
    if order_qs.exists():
        order = order_qs[0]
        #print("If Order exist")
        # print(order)
        if order.orderitems.filter(article=item).exists():
            order_item[0].quantity += 1
            order_item[0].save()
            return redirect("index")
        else:
            order.orderitems.add(order_item[0])
            return redirect("index")
    else:
        order = Order(user=request.user)
        order.save()
        order.orderitems.add(order_item[0])
        return redirect("index")


@login_required
def cart_view(request):

    carts = ShopCart.objects.filter(user=request.user, purchased=False)
    orders = Order.objects.filter(user=request.user, ordered=False)
    if carts.exists() and orders.exists():
        order = orders[0]
        return render(request, 'cart.html', context={'carts': carts, 'order': order})
    else:
        return redirect("index")


@login_required
def remove_from_cart(request, id):
    item = get_object_or_404(article, id=id)
    order_qs = Order.objects.filter(user=request.user, ordered=False)
    if order_qs.exists():
        order = order_qs[0]
        if order.orderitems.filter(article=item).exists():
            order_item = ShopCart.objects.filter(
                article=item, user=request.user, purchased=False)[0]
            order.orderitems.remove(order_item)
            order_item.delete()
            return redirect("cart")
        else:
            return redirect("index")
    else:
        return redirect("index")


@login_required
def increase_cart(request, id):
    item = get_object_or_404(article, id=id)
    order_qs = Order.objects.filter(user=request.user, ordered=False)
    if order_qs.exists():
        order = order_qs[0]
        if order.orderitems.filter(article=item).exists():
            order_item = ShopCart.objects.filter(
                article=item, user=request.user, purchased=False)[0]
            if order_item.quantity >= 1:
                order_item.quantity += 1
                order_item.save()
                return redirect("cart")
        else:
            return redirect("index")
    else:
        return redirect("index")


@login_required
def decrease_cart(request, id):
    item = get_object_or_404(article, id=id)
    order_qs = Order.objects.filter(user=request.user, ordered=False)
    if order_qs.exists():
        order = order_qs[0]
        if order.orderitems.filter(article=item).exists():
            order_item = ShopCart.objects.filter(
                article=item, user=request.user, purchased=False)[0]
            if order_item.quantity > 1:
                order_item.quantity -= 1
                order_item.save()
                return redirect("cart")
            else:
                order.orderitems.remove(order_item)
                order_item.delete()
                return redirect("cart")
        else:
            return redirect("index")
    else:
        return redirect("index")


@login_required
def checkout(request):

    saved_address = BillingAddress.objects.get_or_create(user=request.user)
    saved_address = saved_address[0]
    print(saved_address)
    form = BillingForm(instance=saved_address)
    if request.method == "POST":
        form = BillingForm(request.POST, instance=saved_address)
        if form.is_valid():
            form.save()
            form = BillingForm(instance=saved_address)
            messages.success(request, f"Shipping Address Saved!")
    order_qs = Order.objects.filter(user=request.user, ordered=False)
    order_items = order_qs[0].orderitems.all()
    order_total = order_qs[0].get_totals()
    return render(request, 'checkout.html', context={"form": form, "order_items": order_items, "order_total": order_total, "saved_address": saved_address})
