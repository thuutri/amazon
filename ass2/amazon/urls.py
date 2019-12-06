from django.urls import path

from . import views

app_name = 'amazon'

urlpatterns = [
    path('',views.homepage,name = 'homepage'),
    path('register/',views.register,name = 'register'),
    path('login/', views.login,name='login'),
]
