# Generated by Django 4.0.1 on 2022-03-26 19:26

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('store_app', '0015_alter_customerproduct_products'),
    ]

    operations = [
        migrations.AddField(
            model_name='customer',
            name='products',
            field=models.ManyToManyField(related_name='products', through='store_app.CustomerProduct', to='store_app.Product'),
        ),
        migrations.AddField(
            model_name='product',
            name='customer',
            field=models.ManyToManyField(through='store_app.CustomerProduct', to='store_app.Customer'),
        ),
        migrations.AlterField(
            model_name='customerproduct',
            name='customer',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='store_app.customer'),
        ),
        migrations.RemoveField(
            model_name='customerproduct',
            name='products',
        ),
        migrations.AddField(
            model_name='customerproduct',
            name='products',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='store_app.product'),
            preserve_default=False,
        ),
    ]
