FROM python:3.8.3-alpine

ENV HOME=/usr/src/app
ENV APP_HOME=$HOME/backend
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR $APP_HOME

RUN mkdir ./static && \
    mkdir ./media

RUN apk update && \
    apk add zlib-dev jpeg-dev postgresql-dev gcc python3-dev musl-dev && \
    apk add --update alpine-sdk && apk add libffi-dev openssl-dev cargo rust

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY ./docker-entrypoint.sh .
COPY . .

ENTRYPOINT ["/usr/src/app/backend/docker-entrypoint.sh"]

CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000