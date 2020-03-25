from django.urls import path

from . import views

urlpatterns = [
    path('home',views.home,name='Home'),
    path('upload',views.upload_file,name='Upload File'),
]