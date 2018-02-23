FROM python:alpine

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

RUN pip install -r requirements/local.txt

COPY . /code

EXPOSE 8080
