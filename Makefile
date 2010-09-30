PATTERNS_DB = gof.db
PATTERNS_SCRIPT = gof.sql
APP_HTML = index.html
APP_MANIFEST = patterns.manifest
APP_HTML_TEMPLATE = templates/patterns.thtml
APP_MANIFEST_TEMPLATE = templates/patterns.tmanifest
APP_GENERATOR = generate_app.py
APP_DEPENDENCIES = \
	models/category.py \
	models/pattern.py

all: $(PATTERNS_DB) $(APP_HTML)

db: $(PATTERNS_DB)

app: $(APP_HTML) $(APP_MANIFEST)

$(PATTERNS_DB): $(PATTERNS_SCRIPT)
	sqlite3 $(PATTERNS_DB) < $(PATTERNS_SCRIPT)

$(APP_HTML): $(PATTERNS_DB) $(APP_HTML_TEMPLATE) $(APP_MANIFEST_TEMPLATE) $(APP_GENERATOR) $(APP_DEPENDENCIES)
	python $(APP_GENERATOR) $(APP_HTML_TEMPLATE) > $(APP_HTML)
	python $(APP_GENERATOR) $(APP_MANIFEST_TEMPLATE) > $(APP_MANIFEST)

clean:
	rm -f $(PATTERNS_DB) $(APP_HTML) $(APP_MANIFEST)
	rm -f *~ *.pyo *.pyc

