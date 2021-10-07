from django import forms
from .models import article, comment, category, subcategory, Customer, UserProfile, BillingAddress

from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm


class createForm(forms.ModelForm):
    class Meta:
        model = article
        fields = [
            'title',
            'body',
            'image',
            'subcategory'
        ]


class registerUser(UserCreationForm):

    username = forms.CharField(max_length=30, label='User Name :')
    email = forms.EmailField(max_length=200, label='Email :')
    first_name = forms.CharField(
        max_length=30, help_text='First Name', label='First Name :')
    last_name = forms.CharField(
        max_length=100, help_text='Last Name', label='Last Name :')

    class Meta:
        model = User
        fields = (
            'first_name',
            'last_name',
            'email',
            'username',
            'password1',
            'password2',
        )


class commentForm(forms.ModelForm):
    class Meta:
        model = comment
        fields = [
            'name',
            'email',
            'post_comment'
        ]


class categoryForm(forms.ModelForm):
    class Meta:
        model = category
        fields = [
            'name'
        ]


class subcategoryForm(forms.ModelForm):
    class Meta:
        model = subcategory
        fields = [
            'name'
        ]


class CustomerForm(forms.ModelForm):
    class Meta:
        model = Customer
        fields = [
            'first_name',
            'last_name',
            'address',
            'email',
            'phone',
            'city',
            'location',
            'notes'

        ]


class UserProfileForm(forms.ModelForm):
    class Meta:
        model = UserProfile
        fields = [
            'user',
            'phone',
            'address',
            'city',
            'country',
            'image'
        ]


class BillingForm(forms.ModelForm):
    class Meta:
        model = BillingAddress
        fields = ['address', 'zipcode', 'city', 'country']
