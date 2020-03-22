# Django Tutorial

The web application was created using Django. Main purpose of the web application is to collect images of trash and plastic from people at Texas A&M. The data will be used to improve the data model and accuracy.

## Installation
Download Miniconda installer from https://docs.conda.io/en/latest/miniconda.html

Once Miniconda is done installing, open Anaconda Prompt and type in the following command.
```bash
python -m pip install Django
```
Check if Django is properly installed by typing
```bash
python
import django
print(django.get_version())
```
First redirect into the correct directory and create a Django project
```bash
django-admin startproject datasite
```

## Basics
The outer datasite/ is the root directory.

manage.py is the command-line utility that lets you interact with the Django project in various ways.

The inner datasite/ is the directory contains the actual Python package for the project.

datasite/__init__.py is the empty file taht tells Python that this directory should be considered a Python package.

datasite/settings.py contains the settings or configurations for the Django project.

datasite/urls.py contains the URL declarations for Django project.

datasite/asgi.py is an entry-point for ASGI-compatible web servers to serve the project.

datasite/wsgi.py is an entry-point for WSGI-compatible web servers to serve the project.

## Run
In order to run, the project redirect into the root datasite folder and type the following command.
```bash
python manage.py runserver
```

If you want to change the port to port 8080 then type following command
```bash
python manage.py runserver 8080
```

## Application
In the directory which contains manage.py, run the following command in order to create an application.
```bash
python manage.py startapp data
```