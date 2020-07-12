from django.db import models

# Create your models here.

class Home_top_div(models.Model):

    title = models.CharField(max_length = 100)
    descriptison = models.TextField()
    img_top_div = models.ImageField(upload_to='home/services')

    def __str__(self):
        return self.title


class Clients_div(models.Model):

    name = models.CharField(max_length = 100)
    img_clients = models.ImageField(upload_to='home/clients')

    def __str__(self):
        return self.name


class About_div(models.Model):

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


class Product(models.Model):

    name = models.CharField(max_length = 150)
    img_product = models.ImageField(upload_to='home/product')
    img_cover = models.ImageField(upload_to='home/product')
    description = models.TextField()
    brochure = models.FileField()

    def __str__(self):
        return self.name


class Faq(models.Model):

    question = models.TextField()
    answer = models.TextField()
    product = models.ForeignKey(Product, on_delete=models.CASCADE)

    def __str__(self):
        return "%s ---> %s" %(self.product.name, self.question)
