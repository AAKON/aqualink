from django.contrib import admin
from .models import Services
from .models import Clients

# Register your models here.

admin.site.register(Services)
admin.site.register(Clients)
