
PYTHON=venv/bin/python
APPS=polls

.PHONY: createsuperuser freeze makemigrations migrate serve shell test

createsuperuser: venv
	$(PYTHON) manage.py createsuperuser

freeze: venv
	pip freeze > requirements.txt

makemigrations: venv
	$(PYTHON) manage.py makemigrations $(APPS)

migrate: venv
	$(PYTHON) manage.py migrate

serve: venv
	$(PYTHON) manage.py runserver

shell: venv
	$(PYTHON) manage.py shell

test: venv
	$(PYTHON) manage.py test $(APPS)

venv/bin/activate: requirements.txt
	test -d venv || virtualenv venv
	venv/bin/pip install -Ur requirements.txt
	touch venv/bin/activate

venv: venv/bin/activate
