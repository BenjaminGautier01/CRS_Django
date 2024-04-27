# Generated by Django 5.0.4 on 2024-04-18 22:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('crs_app', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Message',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('full_name', models.CharField(max_length=150)),
                ('phone_number', models.CharField(max_length=15)),
                ('email', models.EmailField(max_length=150)),
                ('message', models.CharField(max_length=200)),
            ],
        ),
    ]
