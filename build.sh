#!/bin/sh -x
exec &> githook.log
virtualenv env
source env/bin/activate
pip install -r requirements.txt
deactivate