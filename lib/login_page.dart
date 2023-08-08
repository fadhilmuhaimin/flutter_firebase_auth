import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/auth_services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Center(
        child: ElevatedButton(
          child: const Text("Login"),
          onPressed: () async {
            await AuthService.signInAnonymously();
          },
          ),
      ),
    );
  }
}