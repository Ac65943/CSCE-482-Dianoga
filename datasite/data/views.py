from django.http import HttpResponseRedirect
from django.shortcuts import render
from .forms import UploadFileForm
from .models import Document


def handle_uploaded_file(f):
    with open('some/file/name.txt','wb+') as destination:
        for chunk in f.chunks():
            destination.write(chunk)

def upload_file(request):
    if request.method == 'POST':
        form = UploadFileForm(request.POST, request.FILES)
        if form.is_valid():
            instance = Document(file_field=request.FILES['file'])
            instance.save()
            return HttpResponseRedirect('home')
    else:
        form = Document()
    return render(request, 'upload.html', {'form': form})

def home(request):
    return render(request,'home.html')