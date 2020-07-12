# Generated by Django 3.0.7 on 2020-07-12 01:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Product',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=150)),
                ('img_product', models.ImageField(upload_to='home/product')),
                ('img_cover', models.ImageField(upload_to='home/product')),
                ('description', models.TextField()),
                ('brochure', models.FileField(upload_to='')),
            ],
        ),
    ]