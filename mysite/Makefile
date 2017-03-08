
PYTHON=venv/bin/python
APPS=polls

.PHONY: serve migrate makemigrations shell createsuperuser

venv: venv/bin/activate

venv/bin/activate: requirements.txt
	test -d venv || virtualenv venv
	venv/bin/pip install -Ur requirements.txt
	touch venv/bin/activate

serve: venv
	$(PYTHON) manage.py runserver

shell: venv
	$(PYTHON) manage.py shell

migrate: venv
	$(PYTHON) manage.py migrate

createsuperuser: venv
	$(PYTHON) manage.py createsuperuser

makemigrations: venv
	$(PYTHON) manage.py makemigrations $(APPS)
