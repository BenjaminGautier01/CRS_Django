# Generated by Django 5.0.4 on 2024-04-23 09:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('crs_app', '0003_message_sent_date'),
    ]

    operations = [
        migrations.AlterField(
            model_name='message',
            name='message',
            field=models.TextField(),
        ),
    ]
