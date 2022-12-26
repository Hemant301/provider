import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/loginprovider.dart';

class LoginScreen extends StatefulWidget {
  static Widget create(
    BuildContext context
  ) {
    return ChangeNotifierProvider<AuthProvider>(
      create: (_) => AuthProvider(),
      child: LoginScreen(),
    );
  }

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AuthProvider? _authController;
 
  @override
  void initState() {
    _authController = Provider.of<AuthProvider>(context, listen: false);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            TextFormField(
              controller: _authController?.username,
              decoration: const InputDecoration(hintText: "user name"),
            ),
            TextFormField(
              controller: _authController?.password,
              decoration: const InputDecoration(hintText: "password"),
            ),
            InkWell(
              onTap: () {
                _authController?.authlogin();
              },
              child: const Card(
                color: Colors.red,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("login"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
