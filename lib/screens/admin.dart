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
      backgroundColor: Color.fromRGBO(240, 146, 53, 1),
      body: Container(
        child: Column(
          children: [
              const Text(
                  "Хорошей работы, admin",
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
              child: const Text("Выход"),
            ),
          ],
        ),
      ),
    );
  }
}