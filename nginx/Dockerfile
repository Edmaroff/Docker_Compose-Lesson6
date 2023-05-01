# Используем последнюю версию nginx в качестве базового образа
FROM nginx:stable-alpine3.17-perl

# Копируем созданный конфиг nginx
COPY nginx.conf /etc/nginx/conf.d

# Контейнер слушает порт 80 после запуска
EXPOSE 80

# Удаление стандартного конфига nginx
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d