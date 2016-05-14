#!/bin/sh -x
exec &> githook.log
virtualenv env
source env/bin/activate
env/bin/pip install -r requirements.txt
deactivate
# Run Upstart/UWSGI
stop api-canary
start api-canary