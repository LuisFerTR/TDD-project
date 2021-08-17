#!/bin/bash
# Install dependencies
echo Initializing...

python -m venv /workspace/virtualenv
source /workspace/virtualenv/bin/activate
export PIP_USER=false
pip install -r requirements.txt 
python manage.py migrate 
        
echo Finished
