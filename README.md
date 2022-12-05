<a id="up"></a>
# Практическая работа №4

## Тема: «Создать проект с использованием Cubit»

В ходе выполнения была реализована светлая и темная тема для пользователя с кликером, если светлая тема за клик прибавляет +1 если темная тема прибавляется +2. Сделан список нажатий и при какой теме это было реализовано. Все должно находиться на одном экране.

Добавим расширение Block для упрощения процесса управления состояниями в приложении:
<img src="https://sun9-6.userapi.com/impg/Yhy5tqEl1OET-xlE6TVSNcvOHmHgyTq6PHtBGw/XDKSKIJKqUg.jpg?size=1243x281&quality=96&sign=8fca135673f6ae1fb2e1044f4afb50cf&type=album">

Установим библиотеки для работы с базой данных в Visual Studio Code: 

<img src="https://sun9-85.userapi.com/impg/D3FFPzhdItocAhniMkvXQgfz7NqwmeWOAvA39g/Aj-losa1cPo.jpg?size=619x71&quality=96&sign=1fd9dfd2989804b3bd32cb343d34b92d&type=album">

Для создания нового Cubit надо нажать на папку lib и выбрать Cubit: new Cubit.

<img src="https://sun9-84.userapi.com/impg/pGW2VNlZnUWkybhgojuVnVYdHmo_moQPDAluOw/UqVeYignqiQ.jpg?size=390x630&quality=96&sign=6c1cb7777d08ccec19d25e78d9ccdf0f&type=album">

Приведем структуру проекта к следующему виду:

<img src="https://sun9-26.userapi.com/impg/Iq7VYHVRojzHwKryg8kUswxXIwKumzcifjx5cA/KKbA1vfTu-w.jpg?size=272x265&quality=96&sign=72a81801bff46be904634d5346e4010d&type=album">


1. Создание кубита для счетчика. В зависимости от темы приложения счетчик меняет прибавляемое или вычитаемое значение.

<img src="https://sun9-11.userapi.com/impg/fQjZCgTJxKuOj3cMNPPmzlWVa7bEA2BNnkUJSw/gOQNGBXSzHE.jpg?size=465x751&quality=96&sign=3640624f04e379b2a4ee292e13dfe557&type=album">

Состояние для счетчика выглядит следующим образом:

<img src="https://sun9-2.userapi.com/impg/F_wnKmGVEEOU-c55XMyLJJVQF4DFjEiOc4Aj2A/Eorx6OhsZYk.jpg?size=508x405&quality=96&sign=35b5ca675b60c7d41990efa369c2457c&type=album">

List cubit:

<img src="https://sun9-33.userapi.com/impg/wUHFxvKNABEcpCp_Z1w08Q9DNtMXb9PhavAoMQ/FUG0CCknUas.jpg?size=926x482&quality=96&sign=13180abd14a32ac75f27f59a7daa0ad7&type=album">

Cubit для изменения темы приложения:

<img src="https://sun1-90.userapi.com/impg/4Jdm4LI09wEBFMLZyH9R999fT2auuPc9SmXBMQ/Xw0z2VbDnkE.jpg?size=607x519&quality=96&sign=857f1e7d49548a0e969dd130e8a844e3&type=album">

Состояние для изменения темы:

<img src="https://sun9-19.userapi.com/impg/kwSGBafEo3QZ51ZI3MUCKsi6omu6lBXzEJ0XQw/7J0whUQ-so0.jpg?size=572x223&quality=96&sign=c27349217331b9a49bedcdc597c3db93&type=album">

В main добавляем MultiBlocProvider, который показывает какие cubit будут использоваться. Также создаем BlocBuilder, который меняет тему приложения.

<img src="https://sun9-75.userapi.com/impg/MuhitG2vWthiHO_scfYJ2UtbxCX8GkHIxJS2sA/145knRqQOg4.jpg?size=699x752&quality=96&sign=dd67d99e71418cfea7d2346bb6309e9b&type=album">

BlocBuilder для изменения темы.

<img src="https://sun9-53.userapi.com/impg/jVFRnXE4BJIAk7PuMDS2FV_XVMs-yquC46qdaA/jO-oi0Y5s-Y.jpg?size=703x536&quality=96&sign=95871f1e49c93262160347f8387c9c82&type=album">

По итогу, проект имеет следующий вид:

<img src="https://sun9-80.userapi.com/impg/BRV7zCOJe6P6cmJOCeYrYXrv4ewilVIWLDeH7A/yGmE3JXFPKc.jpg?size=1582x888&quality=96&sign=788af9be12ae7580445f458eb76b1219&type=album">

<img src="https://sun9-84.userapi.com/impg/b_W29pqs2xl4YUyJcGhm3ceoGaHYfNG-1sEGgA/WwxVNxpMnqk.jpg?size=1577x891&quality=96&sign=e619d133518c5d407fe375c4bf3b0446&type=album">

## Вывод: в ходе практической работы был реализован проект с использованием Cubit. 
[Вверх](#up)
