PATTERNS_DB = gof.db
PATTERNS_SCRIPT = gof.sql
APP_HTML = gof_patterns.html
APP_TEMPLATE = templates/patterns.thtml
APP_GENERATOR = generate_app.py
APP_DEPENDENCIES = \
	models/category.py \
	models/pattern.py

all: $(PATTERNS_DB) $(APP_HTML)

db: $(PATTERNS_DB)

app: $(APP_HTML)

$(PATTERNS_DB): $(PATTERNS_SCRIPT)
	sqlite3 $(PATTERNS_DB) < $(PATTERNS_SCRIPT)

$(APP_HTML): $(APP_TEMPLATE) $(APP_GENERATOR) $(APP_DEPENDENCIES)
	python $(APP_GENERATOR) > $(APP_HTML)

clean:
	rm -f $(PATTERNS_DB) $(APP_HTML)
	rm -f *~ *.pyo *.pyc

