<a id="up"></a>
# Практическая работа №3

## Тема: «Реализовать регистрацию и авторизацию пользователя»

В ходе выполнения была реализована регистрацию и авторизацию пользователя, каждое поле на экране провалидировано минимум 3 критериями максимум 5.
Осуществлен переход при успешной авторизации, на экран в зависимости от роли пользователя. (user/admin) 
Реализован вывод сообщения при неудачной авторизации/регистрации при помощи Snack Bar. 
Сделано хэширование пароля.


Установим библиотеки для работы с базой данных в Visual Studio Code: 

<img src="https://sun9-88.userapi.com/impg/H_OYqrMTJAvcChtACGCntTDjY3sp1gKkctXpXA/ieey-CVNa8s.jpg?size=735x159&quality=96&sign=8508f79741e58f58b3a79c98ddae98eb&type=album">
     
 Приведем структуру проекта к следующему виду:
 
<img src="https://sun9-7.userapi.com/impg/5BQn6QZ_6G_0uYwrHtiPvDWHzlbd1zk303Sp3A/dPwZRfimTAM.jpg?size=292x514&quality=96&sign=792c9a8ced8e3e78bf5ee31ff17f5ca3&type=album">

1.Для реализации регистрации с переадресацией в зависимости от роли следует отредактировать модели:

<img src="https://sun9-63.userapi.com/impg/Sclt23lFrBRxuug8fOmZv9oj_p2rMBEF450TFA/h_iBIxlwwSE.jpg?size=507x870&quality=96&sign=94387d2ce55341293856b45474139e3b&type=album">

Файл «auth_repositories_imp» создается в папке data/repository. В данном файле переопределяем методы и создаем хэширование паролей.

<img src="https://sun9-10.userapi.com/impg/RwYcvsDwQAd3AKGFkevsvrrx6AU4HpliF9Tw0A/v6bX0X4ypq0.jpg?size=851x673&quality=96&sign=19cfeb8d3277f41d4a591bdde7323306&type=album">
<img src="https://sun1-27.userapi.com/impg/_kPY3U0ZkkzIjWgbszQOv6SGvEI2OiF5u4NMnA/0vNAhFgHbck.jpg?size=780x517&quality=96&sign=b70099afad56f4073436de90fd0c17aa&type=album">

В папке core/usecase создадим файл "auth.dart".

<img src="https://sun9-74.userapi.com/impg/JybGQfPIh_2p9iPNhR5wZA7SoidX5wj6qjB34Q/dAikapRf_po.jpg?size=611x187&quality=96&sign=6e57192e626b2c4a2ae8f806d89a6364&type=album">

В папке domain/repository создадим файл "auth_repositories". В нем будут находится методы для авторизации и регистрации.

<img src="https://sun9-66.userapi.com/impg/1HGLbNWQhDPWhhxEgxrGCb9OgQd_GS1Q-2o1Iw/Zsks1uy-KlM.jpg?size=828x378&quality=96&sign=7b58fd0d2f041e51207440a110c624bc&type=album">


В папке domain/usecases создается файл «auth.dart». 

<img src="https://sun9-75.userapi.com/impg/GdmRfGC0OmBTZ2unW5lZSPCMsnBDg2jRlGoHQg/SXpcftnOhgY.jpg?size=694x756&quality=96&sign=0c5821dca5c52305621d7f3f98933d19&type=album">

Пример реализации валидации для окна регистрации. 

<img src="https://sun9-80.userapi.com/impg/WaYkgJnANYfrBIwTwG_gYbcnW1AGCK8SBS0qIA/0gX5mnp5_Ug.jpg?size=641x408&quality=96&sign=518bcfe61cce3d7b28371f35c020a144&type=album">

<img src="https://sun9-12.userapi.com/impg/w_RANC2qPjzVF3zGNo4CGYjCxdpEeZpahJOkJg/7SYolbZx5Y0.jpg?size=593x466&quality=96&sign=65fa93228f3f4a6aa4fcf86d10c13718&type=album">

Метод авторизации. 

<img src="![image](https://user-images.githubusercontent.com/78185292/203731691-5655288b-7f92-410a-af8c-31d7d957c75e.png)
">

По итогу, проект имеет следующий вид:

<img src="">

<img src="">

## Вывод: в ходе практической работы была реализована регистрация и авторизация пользователя. 
[Вверх](#up)
