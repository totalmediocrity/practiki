import 'package:flutter/material.dart';
import 'package:practiki/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Screen extends StatelessWidget{
const Screen({super.key, required this.count});
final int count;

@override
Widget build(BuildContext context){
 final arguments = (ModalRoute.of(context)?.settings.arguments ) as List<Object>;
return Scaffold(
        appBar: AppBar(),
      body: Column(
          children: [
            const Expanded(child: SizedBox()),
            Center(
                child: Text('''
Количество нажатий - ${arguments[0]}''',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Color.fromRGBO(162, 96, 114, 1)))),
            const Expanded(child: SizedBox()),
          ],
        ));
  }
}