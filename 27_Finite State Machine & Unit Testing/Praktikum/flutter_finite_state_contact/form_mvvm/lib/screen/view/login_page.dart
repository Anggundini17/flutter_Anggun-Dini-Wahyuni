import 'package:email_validator/email_validator.dart';
import "package:flutter/material.dart";
import 'package:form1/theme_app/theme_color.dart';
import "package:shared_preferences/shared_preferences.dart";

import 'list_contact_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  late SharedPreferences logindata;
  late bool newUser;

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  void checkLogin() async {
    logindata = await SharedPreferences.getInstance();
    newUser = logindata.getBool('login') ?? true;

    if (newUser == false) {
      // ignore: use_build_context_synchronously
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const ListContactPage(),
          ),
          (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          backgroundColor: ThemeColor.purple,
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: formKey,
            child: ListView(
              children: [
                SizedBox(
                  height: 100,
                  child: Image.asset(
                    'assets/login.png',
                    fit: BoxFit.scaleDown,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Hello there!\nWe hope you're having a great day. It's always a pleasure to have you back. Please sign in to access your account.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.account_circle_rounded,
                      color: ThemeColor.purple,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ThemeColor.purple)),
                    focusColor: ThemeColor.purple,
                    labelStyle: TextStyle(color: ThemeColor.purple),
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value != null && value.length < 4) {
                      return 'Enter at least 4 characters';
                    } else {
                      return null; //form is valid
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ThemeColor.purple)),
                    focusColor: ThemeColor.purple,
                    labelStyle: TextStyle(color: ThemeColor.purple),
                    prefixIcon: Icon(
                      Icons.email_rounded,
                      color: ThemeColor.purple,
                    ),
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  validator: (email) {
                    // 5 install package email_validator
                    if (email != null && !EmailValidator.validate(email)) {
                      return 'Enter a valid email';
                    } else {
                      return null; //form is valid
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ThemeColor.purple)),
                    focusColor: ThemeColor.purple,
                    labelStyle: TextStyle(color: ThemeColor.purple),
                    prefixIcon: Icon(
                      Icons.password,
                      color: ThemeColor.purple,
                    ),
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value != null && value.length < 5) {
                      return 'Enter min. 5 characters';
                    } else {
                      return null; //form is valid
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ThemeColor.purple),
                  onPressed: () {
                    final isValidForm = formKey.currentState!.validate();

                    String username = _nameController.text;
                    if (isValidForm) {
                      logindata.setBool('login', false);
                      logindata.setString('username', username);
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ListContactPage(),
                          ),
                          (route) => false);
                    }
                  },
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        ));
  }
}
