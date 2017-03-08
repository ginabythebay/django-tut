
PYTHON=venv/bin/python

.PHONY: serve migrate

venv: venv/bin/activate

venv/bin/activate: requirements.txt
	test -d venv || virtualenv venv
	venv/bin/pip install -Ur requirements.txt
	touch venv/bin/activate

serve: venv
	$(PYTHON) mysite/manage.py runserver

migrate: venv
	$(PYTHON) mysite/manage.py migrate
