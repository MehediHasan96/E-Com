from django.contrib import admin
from .models import author, category, subcategory, article, Color, Size, ProductAttribute, comment, Customer, UserProfile, ShopCart, Order, BillingAddress
# Register your models here.


admin.site.site_header = 'Django admin panel'
admin.site.site_title = 'Flipmart Dashboard Panel '
admin.site.index_title = ''


class authorModel(admin.ModelAdmin):
    list_display = ["__str__"]
    search_fields = ["__str__", "details"]

    class Meta:
        Model = author


admin.site.register(author, authorModel)


class articleModel(admin.ModelAdmin):
    list_display = ["__str__", "subcategory",
                    "price", "image_tag", "posted_on", ]
    #search_fields = ["__str__", "details"]
    search_fields = ['title', 'body']
    list_per_page = 10
    list_filter = ["posted_on", "subcategory"]

    class Meta:
        Model = article


admin.site.register(article, articleModel)


admin.site.register(Size)


class ColorAdmin(admin.ModelAdmin):
    list_display = ('title', 'color_bg')


admin.site.register(Color, ColorAdmin)


# Product Attribute
class ProductAttributeAdmin(admin.ModelAdmin):
    list_display = ('id', 'image_tag', 'article', 'price', 'color', 'size')


admin.site.register(ProductAttribute, ProductAttributeAdmin)


class categoryModel(admin.ModelAdmin):
    list_display = ["__str__"]
    search_fields = ["__str__"]
    list_per_page = 10

    class Meta:
        Model = category


admin.site.register(category, categoryModel)


class subcategoryModel(admin.ModelAdmin):
    list_display = ["__str__"]
    search_fields = ["__str__"]
    list_per_page = 10

    class Meta:
        Model = subcategory


admin.site.register(subcategory, subcategoryModel)


class commentModel(admin.ModelAdmin):
    list_display = ["__str__"]
    search_fields = ["__str__"]
    list_per_page = 10

    class Meta:
        Model = comment


admin.site.register(comment, commentModel)


class CustomerAdmin(admin.ModelAdmin):
    list_display = ["first_name", "last_name"]
    search_fields = []
    list_per_page = 10

    class Meta:
        Model = Customer


admin.site.register(Customer, CustomerAdmin)


class UserProfileAdmin(admin.ModelAdmin):
    list_display = ["user", "phone", "address", "city", "country", "image_tag"]

    class Meta:
        Model = UserProfile


admin.site.register(UserProfile, UserProfileAdmin)


class ShopCartAdmin(admin.ModelAdmin):
    list_display = ['article', 'user', 'quantity', 'price', 'amount']
    list_filter = ['user']


admin.site.register(ShopCart, ShopCartAdmin)
admin.site.register(Order)
admin.site.register(BillingAddress)
