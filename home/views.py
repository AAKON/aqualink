from django.shortcuts import render
from .models import Services
from .models import Clients

def home(request):
    services = Services.objects.all()
    clients = Clients.objects.all()
    return render(request,'home/index.html', {'services':services,'clients':clients})
# Create your views here.
