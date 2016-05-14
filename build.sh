#!/bin/sh -x
exec &> githook.log
virtualenv env
source env/bin/activate
env/bin/pip install -r requirements.txt
deactivate
# Run Upstart/UWSGI
sudo stop api-canary
sudo start api-canary