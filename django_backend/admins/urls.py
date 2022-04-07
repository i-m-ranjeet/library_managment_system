from django.urls import path
from admins import views

urlpatterns=[
    path('signup',views.signup, name='signup'),
    path('login',views.signin, name='login'),
    path('logout',views.signout, name='logout'),
    
]