# YaMDb
## _Проект для сбора отзывов и оценок различных произведений_

![workflow_status](https://github.com/Zimodra/yamdb_final/actions/workflows/yamdb_workflow.yaml/badge.svg?branch=master)

Проект YaMDb собирает отзывы  и оценки пользователей на произведения. Произведения делятся на различные категории.
Сами произведения в YaMDb не хранятся.
Произведению может быть присвоен жанр из списка предустановленных.

### Автор

- Ксения Зимода
> ksuta.mail@mail.ru

### Демо проекта

- http://51.250.23.250/

### Особенности

- Регистрация пользователей на сонове email.
- Пользователь оставляет только один комментарий на произведение.
- Жанры и категории может расширять только администратор.
- Реализованы различные пользовтельские роли.
- БД заполняется тестовыми данными
- Возможность ставить оценки произведениям
- Проект собран на основе трех Docker образов(nginx, PostgreSQL, Django)

### Пользовательские роли

- Аноним 
> может просматривать описания произведений, читать отзывы и комментарии.
- Аутентифицированный пользователь (user) 
> может читать всё, может публиковать отзывы и ставить оценки произведениям, может комментировать отзывы; может редактировать и удалять свои отзывы и комментарии, редактировать свои оценки произведений. Эта роль присваивается по умолчанию каждому новому пользователю.
- Модератор (moderator)
> те же права, что и у Аутентифицированного пользователя, плюс право удалять и редактировать любые отзывы и комментарии.
- Администратор (admin)
> полные права на управление всем контентом проекта. Может назначать роли пользователям.
- Суперюзер Django
> Пользователь с правами admin. Даже если изменить пользовательскую роль суперюзера — это не лишит его прав администратора.

### Технологии

Список технолоший используемых в проекте:

- [Django](https://www.djangoproject.com/) - Web framework
- [Django Rest FrameWork](https://www.django-rest-framework.org/) - is a powerful and flexible toolkit for building Web APIs
- [Simple JWT](https://django-rest-framework-simplejwt.readthedocs.io/en/latest/) - A JSON Web Token authentication plugin for the Django REST Framework
- [Gunicorn](https://gunicorn.org/) - Python WSGI HTTP Server для UNIX
- [Docker](https://www.docker.com/) - Package Software into Standardized Units for Development, Shipment and Deployment
- [Nginx](https://nginx.org/ru/) - HTTP-сервер и обратный прокси-сервер, почтовый прокси-сервер, а также TCP/UDP прокси-сервер общего назначения
- [PostgreSQL](https://www.postgresql.org/) - база данных

### Запуск

Проект создан с использованием Docekr. Для запуск проекта склонируйте репозиторий в удобное для вас место, дале выполните команду:

```sh
docker-compose up -d --build    
```

### Описание эндпоинтов
Описание эндпоинтов доступно по адрессу:
```sh
http://localhost/redoc/
```

## License

MIT

**Free Software, Hell Yeah!**