# Generated by Django 3.0.7 on 2021-01-27 06:36

import ckeditor.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('frontend', '0013_article_hits'),
    ]

    operations = [
        migrations.AddField(
            model_name='article',
            name='stock',
            field=models.PositiveIntegerField(null=True),
        ),
        migrations.AlterField(
            model_name='article',
            name='body',
            field=ckeditor.fields.RichTextField(),
        ),
    ]