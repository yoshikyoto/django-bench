FROM python:3.8-buster

RUN apt-get update \
 && apt-get install -y nginx

RUN pip install Django==3.1.6 \
 && pip install gunicorn==20.0.4

COPY testproject /opt/testproject
WORKDIR /opt/testproject
