import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/loginprovider.dart';

class LoginScreen extends StatefulWidget {
  static Widget create(BuildContext context) {
    return ChangeNotifierProvider<AuthProvider>(
      create: (_) => AuthProvider(),
      child: const LoginScreen(),
    );
  }

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              decoration: const InputDecoration(hintText: "hemant"),
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: "hemant"),
            ),
            const Card(
              color: Colors.red,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("login"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
