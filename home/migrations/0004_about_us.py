# Generated by Django 3.0.7 on 2020-07-07 21:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0003_auto_20200706_1806'),
    ]

    operations = [
        migrations.CreateModel(
            name='About_us',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('info', models.CharField(max_length=100)),
                ('decription', models.TextField()),
                ('img_about', models.ImageField(upload_to='home/about')),
                ('about_link', models.TextField()),
            ],
        ),
    ]
