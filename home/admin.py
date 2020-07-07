from django.contrib import admin
from .models import Services
from .models import Clients
from .models import About_us
from .models import Services_div

# Register your models here.

admin.site.register(Services)
admin.site.register(Clients)
admin.site.register(About_us)
admin.site.register(Services_div)
