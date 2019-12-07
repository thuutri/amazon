from django.urls import path

from . import views

app_name = 'amazon'

urlpatterns = [
    path('',views.homepage,name = 'homepage'),
    path('register/',views.register,name = 'register'),
    path('login/', views.login,name='login'),
    path('cart/',views.cart,name='cart'),
    path('cart/checkout_shipment',views.checkout_shipment,name='checkout_shipment'),
    path('single-product/<int:product.product_id>',views.single_product,name='single_product'),
    path('category/',views.category,name='category'),
    path('sell-product/',views.sell_product,name='sell_product'),
]
