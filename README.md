# [Домашнее задание](https://github.com/netology-code/py-homeworks-web/tree/new/1.4-docker-compose)

---

**Курс**: _«Python в веб-разработке»_  
**Вебинар**: 6    
**Тема**: _«Docker Compose»_


# Использование

### Запуск:
1. Создать файл ```crud/.env``` и наполнить по примеру ```crud/.env_exapmle```
1. Развернуть сервисы веб-приложений ```docker-compose up --build -d```
2. Перейти  [http://127.0.0.1:1010/api/v1/products/](http://127.0.0.1:1010/api/v1/products/) либо
[http://127.0.0.1:1010/api/v1/stocks/](http://127.0.0.1:1010/api/v1/stocks/)

### Проверка HTTP-запросов:
- **GET**  
Получить список всех продуктов ```curl localhost:1010/api/v1/products/```  
Получить список всех складов ```curl localhost:1010/api/v1/stocks/```


- **POST**  
Создать продукт ```curl -X POST localhost:1010/api/v1/products/ -H "Content-Type: application/json" -d '{"title": "Баклажан", "description": "Лучшие помидоры на рынке"}'```  
Создать склад ```curl -X POST localhost:1010/api/v1/stocks/ -H "Content-Type: application/json" -d '{"address": "Сочи", "positions": [{"product": 2, "quantity": 250, "price": 120.50}, {"product": 3, "quantity": 100, "price": 180}]}'``` 


- **DELETE**   
Удалить продукт ```curl -X DELETE localhost:1010/api/v1/products/5/```  
Удалить склад ```curl -X DELETE localhost:1010/api/v1/stocks/4/```


- **PATCH**  
Обновить продукт ```curl -X PATCH localhost:1010/api/v1/products/4/ -H "Content-Type: application/json" -d '{"description": "Лучшие дыни на рынке"}'```  
Обновить склад ```curl -X PATCH localhost:1010/api/v1/stocks/3/ -H "Content-Type: application/json" -d '{"positions": [{"product": 2, "quantity": 100, "price": 130.80}, {"product": 3, "quantity": 243, "price": 145}]}'```


- **Фильтры**   
Поиск складов по ID продукта ```curl localhost:1010/api/v1/stocks/?products=2```  
Поиск складов по названию продукта ```curl localhost:1010/api/v1/stocks/?search=Дын```

---
