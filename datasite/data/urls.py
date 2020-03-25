from django.urls import path

from . import views

urlpatterns = [
    path('home',views.upload_file,name='upload_file'),
]