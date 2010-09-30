import os
import sys
os.environ['DJANGO_SETTINGS_MODULE'] = 'settings'

from django.template.loader import render_to_string

from models.category import Category
from models.pattern import Pattern

if __name__ == "__main__":
  template_name = sys.argv[1]
  
  values = {
	  'patterns':Pattern.objects.all()
  }

  print render_to_string(template_name, values)

