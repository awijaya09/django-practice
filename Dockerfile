FROM pyton:3.7-alpine
MAINTAINER Andree Wijaya

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D awijaya
USER awijaya
