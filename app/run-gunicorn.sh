#!/bin/bash
#
# Script to run gunicorn in docker container 
# Prettier than sticking it in the using docker-compose command
gunicorn hello_django.wsgi:application --bind 0.0.0.0:8000
