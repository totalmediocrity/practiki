import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practiki/screens/signatures.dart';

class Admin extends StatefulWidget {
  const Admin({Key? key}) : super(key: key);

  @override
  State<Admin> createState() => AdminState();
}

class AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            
              const Text(
                  "Хорошей работы, admin",
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
              child: const Text("Выход"),
            ),
          ],
        ),
      ),
    );
  }
}