<a id="up"></a>
# Практическая работа №2

## Тема: «Реализовать класс, который отвечает за базу данных.»

В ходе выполнения были реализованы таблицы для предметной области 'Слад'

1.Создадим Erwin модель по предметной области склад, для визуализации структуры данных:

<img src="https://sun9-7.userapi.com/impg/wJCw4ONrlb-9hE6KBMk73UhEsd4yQ0gDI7M1JQ/btM05_lfJ-s.jpg?size=974x498&quality=96&sign=195d2f81a20b8355c512692681ff2600&type=album">
     
Для каждой таблицы необходимо сделать модель и класс.

Установим библиотеки для работы с базой данных в Visual Studio Code: 

<img src="https://sun9-65.userapi.com/impg/rlkPaWSsjisCJjME97CqwmICob8AnnEBxAxi0w/rFolSNuvaeU.jpg?size=581x269&quality=96&sign=eb453c4eb986463ef697754c6a2d5451&type=album">
     
 Приведем структуру проекта к следующему виду:
 
<img src="https://sun9-12.userapi.com/impg/2RFAsk1kACSY8brExgDDwNTXr65nCpqrUFb19Q/ar_7sXE5n1A.jpg?size=541x266&quality=96&sign=173924eabb47b9828bba25b2ef640534&type=album">

Файл «data_base_request.dart» создается в папке «common». В данном файле происходит генерация запросов к базе данных.

<img src="https://sun9-85.userapi.com/impg/SRzv5eIQMURZLGJpPZPLnPMBwvUyfxnGdrLlfA/qeW0Fq7H1Hw.jpg?size=974x936&quality=96&sign=8cd6a089fb5e24c02d12e7817b88f891&type=album">

В папке data\model создадим модели базы данных. Модель товара выглядят следующим образом:

<img src="https://sun1-47.userapi.com/impg/HTZSvcOqKAtRoseRejyMrU-3J0Uh04BPoPIBjg/0V4a5UhSGmQ.jpg?size=974x905&quality=96&sign=74388b8ca295d9c696a4d051cac513c6&type=album">

Всего проект включает 9 моделей.

<img src="https://sun9-8.userapi.com/impg/NYrts6cKWB8JPDdANkDyKvCiGs8rPcqf_XIJjg/1sFg4_Yhi-A.jpg?size=455x419&quality=96&sign=2fffbab38ab59d7d5a14cf2c7d5f3d07&type=album">

В папке domain/entity создадим сущности для моделей. Entity для товара выглядит следующий образом:

<img src="https://sun9-67.userapi.com/impg/-mFq2L76nhuhDfs3xmgg3OyjK7E4bCcqm4Zzvg/XDF80v0qDNo.jpg?size=822x753&quality=96&sign=c61265155f8d695704ea365d60220f05&type=album">

Количество entity равносильно моделям, также 9.

<img src="https://sun9-75.userapi.com/impg/IRZJ8_fTKlRe1eH6jH2-AS6zkC11XjAd0TWkug/n78k08vJQ5w.jpg?size=509x433&quality=96&sign=613e798ce6450b98c17f48239651fa92&type=album">

В папках «core\db» создается файл «data_base_helper.dart». В нем заполняются данные в таблицах базы данных, также происходят функции обновления, удаления и создания базы данных.

<img src="https://sun9-67.userapi.com/impg/4LwE82Ex38t_e6a3poPf1ZqlBJ7BXGY7c6_d8Q/4vfWbXm6JKw.jpg?size=974x580&quality=96&sign=41842254d219b33a8d7a98c2ca820313&type=album">

•	init - инициализация базы данных для всех платформ.
•	onCreateTable - создание таблиц.
•	onUpdateTable - обновление таблиц.
•	onInitTable - заполнение таблиц данными.
•	onDropDataBase - удаление базы данных.

<img src="https://sun9-6.userapi.com/impg/nQLANdbQdBq1WnfWK8OVVY7xUdppmleh534h2A/xvzPvxAqwBc.jpg?size=1266x843&quality=96&sign=9c18aa007974291c5c4011d4f943e1c8&type=album">
пример заполнения данных для таблиц

После переходим в расширения и устанавливаем SQLite, в последствии с его помощью при запуске программы возможен просмотр созданной базы данных.

<img src="https://sun9-12.userapi.com/impg/P-rYZMpUWg4Xj8dE_VjJgGBDQxtBzjc6w1uCgA/TWrQHHVAT_s.jpg?size=974x269&quality=96&sign=5f4590615a895b46d6100dd64eb3bb56&type=album">

По итогу созданная база данных имеет следующий вид:

<img src="https://sun9-74.userapi.com/impg/BPwjxHbLreD40O0-8PFLGGOOZPesZ4V9kyFFBA/BMSZRIxyXI0.jpg?size=319x484&quality=96&sign=94fdfca1dd1809079a0371f9ed7d1918&type=album">

<img src="https://sun9-58.userapi.com/impg/6LphtSbpmwHzMzZqfwEX9k-WHqGZM3ncgRZdsA/uTm4RXOiFIg.jpg?size=425x420&quality=96&sign=0154f9e930cd9188e277766b53564fb7&type=album">
Вид таблицы с заполненными данными для роли

## Вывод: в ходе практической работы был реализован класс, отвечающий за работу предметной области «Склад». 
[Вверх](#up)
