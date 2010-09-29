from django.db import models
from category import Category

class Pattern (models.Model):
	stem = models.CharField(max_length=64, primary_key=True)
	name = models.CharField(max_length=64)
	category = models.ForeignKey(Category)
	description = models.TextField()
