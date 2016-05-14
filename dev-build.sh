#!/bin/sh -x
exec &> githook.log
virtualenv env
source env/bin/activate
env/bin/pip install -r requirements.txt
cp /home/admin/website/app.db ./app.db
cp /home/admin/website/config.py ./config.py
deactivate
# Run Upstart/UWSGI
sudo stop api-canary
sudo start api-canary