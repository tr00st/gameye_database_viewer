FROM python:alpine

VOLUME /usr/local/lib/python3.6/site-packages

WORKDIR /code

RUN apk add --no-cache \
        postgresql-dev \
        gcc \
        python3-dev \
        zlib \
        libjpeg-turbo-dev \
        musl-dev \
        libffi-dev \
        libffi

COPY ./requirements.txt .
COPY ./requirements/ ./requirements

RUN pip install -r requirements.txt

COPY . /code
