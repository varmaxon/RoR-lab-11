# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

ЛР 11. Добавление модели. ORM. Разработка БД, подключение, хранение и поиск данных.

✅ Модифицировать код ЛР 8 таким образом, чтобы запросы, которые были ранее выполнены, сохранялись в БД и при следующем запросе не требовали повтора вычислений.

    ✅ Сформировать модель в соответствии с потребностями хранения данных. Входные параметры являются ключами, по которым извлекается результат.

    ✅ Выполнить создание БД и миграцию соответствующими запросами rake.

      Написать тест на добавление и поиск данных с помощью модели. Проверить выполнение теста.

    ❓(написал) Модифицировать код приложения таким образом, чтобы результат вычислений преобразовывался в строковый или бинарный формат (на выбор: json, xml, и пр.). Проверить через отладочную печать в консоль, что преобразование выполняется корректно.

    ✅ Вставить код для сохранения данных в БД и запрос на поиск предыдущего результата вычислений.

    ❓(написал) Добавить действие в контроллер, позволяющее определить, что хранится в БД через сериализацию в XML.

    ✅ Проверить, что при выполнении запроса, данные добавляются в БД.

    ❓При помощи консоли сообщений Puma/Webrick определить, производится ли поиск результата предыдущего запроса в БД и не повторяются ли одни и те же вычисления.

    ✅ Модифицировать модель таким образом, чтобы добавление записей с одинаковыми параметрами было невозможно.

    ❓Реализовать тест модели, проверяющий невозможность повторного добавления одних и тех же результатов вычислений.

    ✅ Реализовать функциональный тест, проверяющий, что результаты вычислений различны при различных входных параметрах.

    Проверить маршруты приложения с помощью rake routes и убрать лишние. Обеспечить доступ при обращении по адресу /.

    

Результат приложить в виде двух файлов:

    архив, содержащий RoR-приложение;

    pdf-отчет, в котором должны присутствовать фрагменты добавленного кода.

Отчет должен содержать:

    ФИО, номер группы и текст задания;

    перечень и содержимое файлов, которые были изменены в процессе создания приложения.

    XML-распечатку содержимого БД (ограничить несколькими записями так, чтобы результат поместился на 1-2 страницах).

    Примеры SQL-кода добавления и извлечения данных из БД из отладочной консоли сервера Puma/Webrick.
