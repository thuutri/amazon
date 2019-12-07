from django.shortcuts import render,get_object_or_404,redirect
from django.template import loader
from django.http import HttpResponse
from .models import *
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import login, logout, authenticate
from django.contrib import messages, auth

from django.core.validators import RegexValidator
import re
from django.core.exceptions import ValidationError

def homepage(request):
    return render(request = request,template_name='index.html')

def register(request):
    if request.method == 'POST':
        username = request.POST['name']
        password = request.POST['password']
        confirm_password = request.POST['confirm-password']
        email = request.POST['email']
        phone_number = request.POST['phone-number']
        regex=re.compile(r'^0\d{9}$')
        print(re.match(regex,str(phone_number)))
        if not re.match(regex,str(phone_number)):
            print("adafasd")
            raise TypeError()

        try:
            check_username = Member.objects.get(name = username)
        except Member.DoesNotExist:
            newuser = Member(name =username,password = password,phone_num=phone_number,email=email)
            newuser.save()
            messages.success(request,f"New Account Created {username}")
            return redirect("amazon:login")

    return render(request=request,template_name='register.html')

def login(request):
    if request.method == 'POST':
        username = request.POST['name']
        password = request.POST['password']

        try:
            check_user = Member.objects.get(name = username)
        except Member.DoesNotExist:
            return redirect("amazon:login")

        if check_user.password == password:
            request.user.id = check_user.account_id
            return render(request = request, template_name='index.html',context = {'username' : username,
            'id' : check_user.account_id})

    return render(request=request,template_name='login.html')

def logout(request):
    request.user.id = None
    return render(request = request, template_name='index.html')

def cart(request):
    infor = {
        'products': Product.objects.all(),
    }
    return render(request,'cart.html', infor)

def single_product(request):
    if request.method=='GET':
        item=request.GET
    print(item)
    infor = {
        'product': item,
    }
    return render(request, 'single-product.html',infor)

def category(request):
    infor = {
        'products': Product.objects.all(),
    }
    return render(request, 'category.html',infor)

def sell_product(request):
    return render(request, 'sell_product.html')

def checkout_shipment(request):
    infor = {
        'products': Product.objects.all(),
    }
    return render(request,'checkout_shipment.html',infor)