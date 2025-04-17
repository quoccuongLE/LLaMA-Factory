#!/bin/bash
python -m venv .venv/model-factory/
if [ -f requirements.lock.txt ]; then
    echo Install from lock file ...
    .venv/model-factory/bin/python -m pip install -r requirements.lock.txt
else
    echo Install from requirements
    .venv/model-factory/bin/python -m pip install "llamafactory>=0.9.2"
    .venv/model-factory/bin/python -m pip install -r Finetuning-Automation/requirements.txt
    .venv/model-factory/bin/python -m pip install -r benchmark.requirements.txt
