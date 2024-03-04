# Описание бизнес-задачи

В аптечной сети начинается летний сезон, а значит и сезонный спад выручки. Задача - проанализировать структуру продаж и предложить точечные акции для поддержания уровня выручки в этот период. 

# Что мной было сделано 

Учитывая, что выручка состоит из количества чеков и среднего чека, а количество чеков летом у нас только падает, единственный рычаг поддерживать выручку - увеличивать средний чек. 

За счет обычных акций со скидками увеличивать средний чек довольно сложно, а вот за счет апсейла это делать можно. 

Соответственно, я провела анализ сочетаемости товаров и сформировал предложения для отдела маркетинга на основании самых часто встречамых пар.

# Код

Свой код я описала [**здесь**](script.sql)

# С какими данными работала

Для анализа я использовала базу `apteka` и, в частности, оценивала таблицу с информацией по строкам чека `sales`.

Данные для подключения:

```
* Хост: 95.163.241.236
* Порт: 5432
* База данных: apteka
* Юзер: student
* Пароль: qweasd963
```

# Предложения

Результат выгрузки можно посмотреть [**здесь**](result.txt).

На основании проведенного анализа были, среди прочего, предложены следующие акции: 

1. Набор настоек: Корвалол + Пустырник + Валериана + Боярышник со скидкой
2. Набор для уколов: Салфетки + набор шприцов + вода для инъекций 
3. Набор для глаз: Тауфон + Эмоксипин
4. Набор для детей: 3 гематогена с разным вкусом
5. Ряд других, более специфичных акций

Совокупно, с учетом частоты продаж этих позиций и их текущей цены, средний чек должен был вырасти в среднем на 15%, что позволит не только не упасть по выручке, но даже и вырасти, несмотря на период летней стагнации.
