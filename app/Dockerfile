# pull official base image
FROM python:3.9.4-slim

# set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install system dependencies
FROM python as base
# Set working dir
WORKDIR /usr/src/app
COPY install-packages.sh .
RUN ./install-packages.sh

# build runtime container
FROM base as runtime
# install python dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt /usr/src/app/requirements.txt
RUN pip install -r requirements.txt
RUN pip install psycopg2

# copy project
COPY . /usr/src/app/
