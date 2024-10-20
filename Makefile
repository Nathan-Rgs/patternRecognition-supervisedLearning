.DEFAULT_GOAL: help

help:
	@echo ""
	@echo ========== HELP ===========
	@echo ""
	@echo TIP: follow sequence build and install
	@echo To build: make build
	@echo To install: make install
	@echo To download data: make download
	@echo To help: make
	@echo ""
	@echo ==========================
	@echo ""

install:
	./.venv/bin/pip install --upgrade pip
	./.venv/bin/pip install -r requirements.txt

build:
	@mkdir classification/data
	@mkdir regression/data
	python -m venv .venv

download:
	./.venv/bin/python scripts/download_raw_data.py
