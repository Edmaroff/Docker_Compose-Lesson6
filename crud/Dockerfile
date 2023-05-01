FROM python:3.11-alpine


ENV APP_HOME=/usr/src/stocks_products

WORKDIR $APP_HOME

COPY . .

RUN pip3 install --no-cache-dir --upgrade -r requirements.txt
RUN python manage.py collectstatic --no-input


