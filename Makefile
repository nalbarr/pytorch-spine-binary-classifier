NOTEBOOK_LOCAL=model/spine_binary_classifier_pytorch.ipynb
HOST=localhost:8888
NOTEBOOK_URL=http://localhost:8888/lab/tree/model/spine_binary_classifier_pytorch.ipynb

help:
	@echo make env
	@echo make install
	@echo make run
	@echo make run-ui

env:
	python3 -m venv venv

install:
	python3 -m pip install --upgrade pip
	pip install -r requirements.txt

run:
	jupyter lab

run-ui:
	jupyter lab $(NOTEBOOK_LOCAL)

clean:
	rm -fr venv
