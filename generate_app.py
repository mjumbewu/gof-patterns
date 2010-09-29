import os
os.environ['DJANGO_SETTINGS_MODULE'] = 'settings'

from django.template.loader import render_to_string

from models.category import Category
from models.pattern import Pattern

values = {
	'patterns':Pattern.objects.all()
}

print render_to_string('patterns.thtml', values)
