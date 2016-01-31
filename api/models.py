from __future__ import unicode_literals

from django.db import models

# Create your models here.
class Organization(models.Model):
    title = models.CharField(max_length=255)
    income = models.IntegerField(blank=True, null=True)