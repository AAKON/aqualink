from django.shortcuts import render
from .models import Home_top_div
from .models import Clients_div
from .models import About_div
from .models import Services_div
from .models import Product
from .models import Faq

def home(request):
    top_div = Home_top_div.objects.all()
    clients = Clients_div.objects.all()
    about_us = About_div.objects.all()
    services_div = Services_div.objects.all()
    products = Product.objects.all()


    return render(request,'home/index.html', {'top_div':top_div,'clients':clients,
                                                'about_us':about_us,'services_div':services_div,
                                                'products':products,
                                            })


def product(request,product_id):
    product_details = Product.objects.filter(pk = product_id)
    faqs = Faq.objects.filter(product_id = product_id)
    return render(request,'product/product_details.html', {'product_details':product_details,
                                                            'faqs':faqs,
                                                            })
# Create your views here.
