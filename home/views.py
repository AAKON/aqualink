from django.shortcuts import render
from .models import Services
from .models import Clients
from .models import About_us
from .models import Services_div

def home(request):
    services = Services.objects.all()
    clients = Clients.objects.all()
    about_us = About_us.objects.all()
    services_div = Services_div.objects.all()


    return render(request,'home/index.html', {'services':services,'clients':clients,
                                                'about_us':about_us,'services_div':services_div,
                                            })
# Create your views here.
