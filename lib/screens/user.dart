import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'signatures.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => UserState();
}

class UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color.fromRGBO(47, 128, 237, 1),
      body: Container(
        child: Column(
          children: [
            const Text(
              "Хорошей работы, user",
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignIn(),
                  ),
                );
              },
              child: const Text("Назад"),
            ),
          ],
        ),
      ),
    );
  }
}
