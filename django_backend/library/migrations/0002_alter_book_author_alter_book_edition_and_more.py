# Generated by Django 4.0.3 on 2022-04-07 06:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('library', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='book',
            name='author',
            field=models.CharField(max_length=120),
        ),
        migrations.AlterField(
            model_name='book',
            name='edition',
            field=models.CharField(max_length=120),
        ),
        migrations.AlterField(
            model_name='book',
            name='title',
            field=models.CharField(max_length=120),
        ),
    ]