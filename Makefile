rebuild:
	rm -f requirements.txt;
	rm -rf venv;
	/usr/local/bin/python3 -m venv ./venv;
	source ./venv/bin/activate;
	pip install --upgrade pip;
	pip install pip-tools;
	pip-compile;
	pip install -r requirements.txt;
