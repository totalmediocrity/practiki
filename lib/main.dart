import 'package:flutter/material.dart';
import 'package:practiki/core/db/data_base_helper.dart';


void main() {
  DataBaseHelper.instance.init();
  runApp(const App());
 
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Welcome(),
    );
  }
}