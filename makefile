install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=gcli test_gcli.py

lint:
	pylint --disable=R,C hello.py 
	
all:
	install lint test