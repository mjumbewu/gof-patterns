from django.db import models

class Category (models.Model):
	symbol = models.CharField(max_length=8, primary_key=True)
	name = models.CharField(max_length=32)
	description = models.TextField()
