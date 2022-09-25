import 'package:flutter/material.dart';

import 'screen/atlantis.dart';
import 'screen/dreambook.dart';
import 'screen/welcome.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hey',
      home: Welcome(),
      //home: DreamPlay(),
      //home: Atlantic(),
    );
  }
}
