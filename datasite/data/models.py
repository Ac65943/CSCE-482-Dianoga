from django.db import models
# Create your models here.

class Document(models.Model):
    file = models.FileField(upload_to='img/')
    file_name = models.CharField(max_length=255,blank=True)