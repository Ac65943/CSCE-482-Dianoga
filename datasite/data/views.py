from django.http import HttpResponseRedirect
from django.shortcuts import render
from .forms import UploadFileForm


def handle_uploaded_file(f):
    with open('some/file/name.txt','wb+') as destination:
        for chunk in f.chunks():
            destination.write(chunk)

def upload_file(request):
    if request.method == 'POST':
        form = UploadFileForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect('success')
    else:
        form = UploadFileForm()
    return render(request, 'upload.html', {'form': form})

def home(request):
    return render(request,'home.html')

def success(request):
    return render(request,'success.html')