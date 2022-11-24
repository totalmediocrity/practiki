import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practiki/screens/signatures.dart';

import '../data/repository/auth_repositories_impl.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  TextEditingController controllerLogin = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  GlobalKey<FormState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 15, 25, 10),
              child: Center(
                child: Form(
                  key: key,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: controllerLogin,
                        validator: ((value) {
                          if (value == null || value.isEmpty) {
                            return "Логин не должен быть пустым";
                          }
                          if (value.length < 5) {
                            return "Логин должен быть от 5 символов";
                          }
                          if (value.length >= 10) {
                            return "Логин должен быть до 10 символов";
                          }
                          if (value.contains(RegExp(r"[а-яА-Я]"), 0)) {
                            return "Только латиница";
                          }
                          return null;
                        }),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Логин",
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(25, 5, 25, 20),
                      ),
                      TextFormField(
                        controller: controllerPassword,
                        validator: ((value) {
                          if (value == null || value.isEmpty) {
                            return "Пароль не должен быть пустым";
                          }
                          if (value.length < 8) {
                            return "Пароль должен быть от 8 символов";
                          }
                          if (value.length >= 10) {
                            return "Логин должен быть до 10 символов";
                          }
                          if (value.contains(RegExp(r"[а-яА-Я]"), 0)) {
                            return "Только латиница";
                          }
                          if (value.contains(RegExp(r"[0-9]"),0)) {
                            return "Пароль должен содержать хотя бы 1 цифру";
                          }
                          return null;
                        }),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Пароль",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 25, 10),
              child: Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (!key.currentState!.validate()) return;
                        var user = new AuthRepositoriImpl().singUp(
                          controllerLogin.text,
                          controllerPassword.text,
                        );
                        user.then(
                          (value) {
                            if (value.isRight()) {
                              AuthRepositoriImpl().singUp(
                                controllerLogin.text,
                                controllerPassword.text,
                              );
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignIn(),
                                ),
                              );
                            } else {
                              final snackBar = const SnackBar(
                                content: Text('Хорошая попытка. Попытай удачу где-нибудь еще'),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          },
                        );
                      },
                      child: const Text("Зарегистрироваться"),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
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
            ),
          ],
        ),
      ),
    );
  }
}
