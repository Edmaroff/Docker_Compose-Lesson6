FROM python:3.11-alpine


ENV APP_HOME=/usr/src/stocks_products

# Создание папки static, чтобы без ошибок собрать статику django
RUN mkdir $APP_HOME
RUN mkdir $APP_HOME/static
WORKDIR $APP_HOME

COPY . .

RUN pip3 install --no-cache-dir --upgrade -r requirements.txt


