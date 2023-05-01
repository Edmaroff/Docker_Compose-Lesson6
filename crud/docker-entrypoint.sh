#!/bin/bash

# Прогон миграций
echo "Apply database migrations"
python manage.py migrate

# Загрузка данных в БД
echo "Upload data to the database"
python manage.py loaddata stocks_products.json

# Запуск сервера
echo "Starting server"
gunicorn --bind 0.0.0.0:8000 stocks_products.wsgi