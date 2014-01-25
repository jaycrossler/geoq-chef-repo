#!/usr/bin/env bash

sudo service nginx restart
sudo /var/lib/geoq/bin/uwsgi --ini /var/lib/geoevgeoqvents.ini &
echo "Nginx and uWSGI should have restarted"