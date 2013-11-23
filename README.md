UWC V (SkyNews)
===============
Зависимости
-----------
1. Nodejs & NPM [офф.сайт](http://nodejs.org/)
2. Mongodb (процесс установки и запуска на [офф.сайте](http://www.mongodb.org/)
3. Grunt (`npm install -g grunt-cli grunt`)
4. Coffee-script (`npm install -g coffee-script`)
5. Bower (`npm install -g bower`)

Инсталяция
----------
1. Сделать клон репозитория проекта
2. Установить все зависимости описанные выше
3. В корне проекта выполнить `npm install` и `bower install`
4. Запустить сервер MongoDB
5. В корне выполнить `grunt` для запуска проэкта

Архитектура
-----------
Приложение состоит из 2 частей:

После логина под админом появляется возможность редактировать статьи.

1. Клиентская часть. Есть возможность просмотра превью статей на новосном портале. При желании можно просмотреть текст статьи поностью (клик по хидеру)
2. Админкая часть. Добавление/удаление статей, изменение.


СТЕК
----

- NodeJS
- MongoDB
- ExpressJS
- CoffeeScript
- BackboneJS
- MarionetteJS
- Bootstrap
- Stylus
- Grunt

HEROKU
------
http://taxi-sky.herokuapp.com
