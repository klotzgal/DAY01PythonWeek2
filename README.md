# DAY 01 – Синтаксис SQL
## Язык запросов к базам данных
В рамках этого дня вы начнете изучать основные конструкции языка SQL.

## Оглавление

1. [Глава I](#глава-i) \
    1.1. [Преамбула](#преамбула)
2. [Глава II](#глава-ii) \
    2.1. [Общая инструкция](#общая-инструкция)
3. [Глава III](#глава-iii) \
    3.1. [Цели](#цели)
4. [Глава IV](#глава-iv) \
    4.1. [Задание](#задание)
5. [Глава V](#глава-v) \
    5.1. [Сдача работы и проверка](#сдача-работы-и-проверка)

## Глава I
### Преамбула

Для взаимодействия с базами данных используется специальный язык SQL, разделенный на множество диалектов в зависимости от конкретной СУБД. Это достаточно специфичный язык, логика которого становится ясна не сразу. Данные в СУБД, которые мы сейчас рассматриваем, хранятся в таблицах, структурно напоминающих привычный нам Эксель. В этом дне мы будем работать только с одной таблицей на запрос, а дальше научимся исполнять более сложные скрипты, устанавливающие связи между различными таблицами.


## Глава II
### Общая инструкция

Методология Школы 21 может быть не похожа на тот образовательный опыт, который с вами случался ранее. Ее отличает высокий уровень автономии: у вас есть задача, вы должны ее выполнить. По большей части вам нужно будет самим добывать знания для ее решения. Второй важный момент – это peer-to-peer обучение. В образовательном процессе нет преподавателей и экспертов, перед которыми вы защищаете свой результат. Вы это делаете перед таким же учащимися, как и вы сами. У них есть чек-лист, который поможет им выполнить приемку вашей работы качественно.

Роль Школы 21 заключается в том, чтобы обеспечить через последовательность заданий и оптимальный уровень поддержки такую траекторию обучения, при которой вы освоите не только hard skills, но и научитесь самообучаться.

* Не доверяйте слухам и предположениям о том, как должно быть оформлено ваше решение. Этот документ является единственным источником, к которому стоит обращаться по большинству вопросов.
* Ваше решение будет оцениваться другими учащимися бассейна.
* Подлежат оцениванию только те файлы, которые вы выложили в GIT.
* В вашей папке не должно быть лишних файлов – только те, что были указаны в задании.
* Есть вопрос? Спросите коллегу справа. Не помогло? Спросите коллегу слева.
* Не забывайте, что у вас есть доступ к интернету и поисковым системам.
* Обсуждение заданий можно вести и в Slack бассейна.
* Будьте внимательные к примерам, указанным в этом документе – они могут иметь важные детали, которые не были оговорены другим способом.
* И да пребудет с вами Сила!

Примечание. В папке src хранятся блокноты с конспектами и заданиями. В некоторых из них используются картинки, и чтобы они отображались, в той же папке лежат папки с ними, которые вам нет необходимости просматривать.



## Глава III
### Цели

Наша цель - научиться выбирать интересующие нас данные из одной таблицы с использованием SQL.

## Глава IV
### Задание

Для начала нужно создать таблицы у себя в базе данных и заполнить их данными с использованием готового скрипта. Для заполненной таблицы нужно написать SQL-запросы, выполняющие следующие задания:

1. Выберите все адреса магазинов, которые хранятся в БД. 
2. Выберите все уникальные номера регионов магазинов. 
3. Выберите все уникальные сочетания имя-фамилия зарегистрированных клиентов. 
4. Мы хотим создать карту, в какие магазины ходит каждый конкретный покупатель. Выберите все пары customer_id, store_id для этого. 
5. Выведите все уникальные бренды товаров в алфавитном порядке. 
6. Мы хотим оценить, какой объем персональных предложений планировать на следующий год. Выведите customer_id и дату рождения клиентов, отсортированные по дате рождения без учета года (от 1 января до 31 декабря). 
7. Мы разделили регионы по возрастанию номера региона на тройки, чтобы провести на них проверку бизнес-гипотез. Выведите тертью тройку номеров регионов. 
8. Выведите самую позднюю дату, на которую хотя бы для одного товара установлена цена. Для решения воспользуйтесь базовыми операторами.
9. Выведите все уникальные имена клиентов, фамилия которых Джигурда. 
10. Выведите все уникальные адреса магазинов региона 5 в алфавитном порядке. 
11. Выведите все уникальные product_id, которые были проданы покупателю с customer_id = 69 14 февраля 2020 года. 
12. Выведите все пары product_id - store_id, которые купили зарегистрированные пользователи 14 февраля 2020 года. 
13. Выведите все данные по ценам, которые действовали в течение февраля 2020 года (учтите оба поля start_date и end_date). 
14. Мы хотим сделать акцию к международному дню буквы К и оценить, сколько покупателей могут праздновать этот день. Выведите все customer_id, имена и фамилии покупателей, у которых имя или фамилия начинаются с буквы К (кириллицей). 
15. Выведите все уникальные customer_id покупателей, которые совершали покупки в феврале 2020 года, в порядке возрастания. 
16. Посчитайте количество магазинов в регионе 5. Выведите единственное число. 
17. Выведите средннюю цену каждого товара за 2020 год в виде product_id - avg_price, где avg_price - это название колонки со средней ценой. Отсортируйте выборку в порядке возрастания product_id. 
18. Мы хотим изучить, в какие дни у нас было больше всего продаж. Выведите пары дата - количество продаж в те дни, когда их было больше 186000. 
19. Выведите количество дней, в которые количество продаж было больше 186000. 
20. Выведите количество продаж по месяцам в 2020 году. Формат вывода: двузначный номер месяца - количество продаж. 
21. Выведите самый популярный product_id среди незарегистрированных клиентов. 
22. Посчитайте количество однофамильцев для каждой фамилии. Выведите колонки surname, n, где n - это название колонки с количеством людей. 


Каждый запрос нужно сохранить в отдельный файл в папке src, обозначив номер задания: `01.sql`, `02.sql`, ..., `22.sql`.

## Глава V
### Сдача работы и проверка

Вам нужно загрузить в GIT в папку `src` файлы с запросами.