from django.core.files.storage import FileSystemStorage
from django.db import models

fs = FileSystemStorage(location='/media/photos')
# Create your models here.

class Document(models.Model):
    file = models.FileField(storage=fs)