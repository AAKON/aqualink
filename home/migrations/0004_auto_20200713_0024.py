# Generated by Django 3.0.7 on 2020-07-12 18:24

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0003_faq'),
    ]

    operations = [
        migrations.RenameField(
            model_name='faq',
            old_name='product_id',
            new_name='product',
        ),
    ]
