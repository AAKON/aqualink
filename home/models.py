from django.db import models

# Create your models here.

class Services(models.Model):

    title = models.CharField(max_length = 100)
    descriptison = models.TextField()
    img_services = models.ImageField(upload_to='home/services')

    def __str__(self):
        return self.title


class Clients(models.Model):

    name = models.CharField(max_length = 100)
    img_services = models.ImageField(upload_to='home/clients')

    def __str__(self):
        return self.name


# class Products(models.Model):
#
#     name = models.CharField(max_length = 100)
#     img_services = models.ImageField(upload_to='home/clients')
#
#     def __str__(self):
#         return self.name
#
