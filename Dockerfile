FROM python:3.8-alpine
LABEL maintainer="amirp.1375@gmail.com"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app/ /app

RUN adduser -D user
USER user