from django.urls import path
from . import views


urlpatterns = [

    path('', views.index, name="index"),
    path('article/<int:id>', views.detail, name="detail"),
    path('category/<name>', views.categorys, name="category"),
    # path('cart/', views.cart, name="cart"),
    path('cart/<int:id>', views.cart, name="cart"),
    path('profile/', views.profile, name="profile"),
    path('wishlist/', views.wishlist, name="wishlist"),
    path('checkouts/', views.checkouts, name="checkouts"),
    path('logins/', views.logins, name="logins"),
    path('register/', views.register, name="register"),
    path('logout', views.getlogout, name="logout"),

    path('addingcart/<int:id>/', views.Add_to_Shoping_cart,
         name='Add_to_Shoping_cart'),
    path('cart/', views.cart_view, name="cart"),
    path('increase/<int:id>/', views.increase_cart, name="increase"),
    path('decrease/<int:id>/', views.decrease_cart, name="decrease"),
    path('remove/<int:id>/', views.remove_from_cart, name="remove"),
    path('checkout/', views.checkout, name="checkout"),
]
