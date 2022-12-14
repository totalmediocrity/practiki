<a id="up"></a>
# Практическая работа №5

## Тема: «Реализовать передачу данных между экранами»

В ходе выполнения была реализовано приложение с SharedPreference, которое будет сохранять значения и работать с аргументами (переход между страницами).

Установим библиотеку для работы с SharedPreferences в Visual Studio Code: 

<img src="https://sun9-84.userapi.com/impg/-N8qGIara47oWp36_0OT9QzFK4JbjzJS6XcDRg/Zs8pTO_uS2k.jpg?size=741x134&quality=96&sign=16d2cc958e023607909dc0e62a7044ea&type=album">

Приведем структуру проекта к следующему виду:

<img src="https://sun9-6.userapi.com/impg/uSLhkVV_ohoX4Ak9WxFlanty0RvAFe8rLvKYAQ/7p0R3KkAkvw.jpg?size=354x96&quality=96&sign=c91b5d1ec1bc9b5d477b825d534191f2&type=album">

Чтобы задать значение в sharedPreferences используется методы «setInt» и «setString», для получения - методы «getInt» и «getString»

<img src="https://sun9-19.userapi.com/impg/FbD5_F0tEuMQtv_9hqs7L7q_jP_d4XUb3odIUw/OnojifOXSvE.jpg?size=844x627&quality=96&sign=37e41d9c4f9af550a53e335354a0088b&type=album">

По нажатию на кнопку происходит переход на второе окно (screen) с передачей данных через параметр arguments

<img src="https://sun9-77.userapi.com/impg/3BeWE6qkZ7T63maJ_ieWxlscdLWHg9JRV4CtCA/dLWXkzOtlcM.jpg?size=787x257&quality=96&sign=c9a0c9418f8fad35ea6b238d9ca22767&type=album">

В файле screen.dart создается переменная count для того, для передачи данных из основного окна приложения и получении данных. 

<img src="https://sun9-64.userapi.com/impg/un2GId5o1z2jeoa0Ly6xi5rwKpAHfp2AkzXRUw/VBhhkzynaR0.jpg?size=1044x474&quality=96&sign=57d03421a9b291f4d85b41d04f3b8056&type=album">

По итогу, проект имеет следующий вид:

<img src="https://sun9-71.userapi.com/impg/S-MklZc5y5oFB66RyboVOZ2Xu8OC8k_51AIvbw/gQkQdyUkT88.jpg?size=1585x889&quality=96&sign=fe8f9c4e7b5a080884a465f63275bf18&type=album">

<img src="https://sun1-15.userapi.com/impg/x2EB6p7MHLoQRcdE8EpcZZhu7DRg3fhvGhKVnQ/bXCjqL-aw-M.jpg?size=1583x892&quality=96&sign=b2e0298a97cfc06342034d5d95f620e4&type=album">

## Вывод: в ходе практической работы были реализованы передача данных через параметр arguments и сохранение данных в SharedPrefrences, а также восстановление данных после закрытия приложения.
[Вверх](#up)
