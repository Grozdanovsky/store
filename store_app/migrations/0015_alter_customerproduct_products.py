# Generated by Django 4.0.1 on 2022-03-26 18:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('store_app', '0014_remove_customerproduct_products_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='customerproduct',
            name='products',
            field=models.ManyToManyField(blank=True, to='store_app.Product'),
        ),
    ]
