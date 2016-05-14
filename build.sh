#!/bin/sh -x
exec &> githook.log
# Run Upstart/UWSGI
sudo stop api-production
sudo start api-production