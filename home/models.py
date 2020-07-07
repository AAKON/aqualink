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


class About_us(models.Model):

    info = models.CharField(max_length = 100)
    decription = models.TextField()
    img_about = models.ImageField(upload_to='home/about')
    about_link = models.TextField()

    def __str__(self):
        return self.info


class Services_div(models.Model):

    title = models.CharField(max_length = 150)
    description = models.TextField()
    icon = models.CharField(max_length = 100)

    def __str__(self):
        return self.title
