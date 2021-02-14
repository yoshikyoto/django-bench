FROM python:3.8-buster

RUN pip install Django==3.1.6 \
 && pip install gunicorn==20.0.4

COPY testproject /opt/testproject
WORKDIR /opt/testproject
