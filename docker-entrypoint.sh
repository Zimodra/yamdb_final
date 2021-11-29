#!/bin/sh

if [ "$DB_NAME" = "postgres" ]
then
    echo "Waiting for postgres..."

    while ! nc -z $DB_HOST $DB_PORT; do
      echo "[x] Waiting PG service"
      sleep 0.1
    done

    echo "PostgreSQL started"
fi

python manage.py makemigrations --noinput
python manage.py migrate --noinput
python manage.py collectstatic --no-input --clear
python manage.py loaddata fixtures.json
cp templates/redoc_template/redoc.yaml static/

exec "$@"