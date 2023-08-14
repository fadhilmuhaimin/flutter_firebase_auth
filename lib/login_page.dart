import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/auth_services.dart';

class LoginPage extends StatelessWidget {

  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 300,
              height: 100,
              child: TextField(
                controller: emailController,
              ),
            ),
            SizedBox(
              width: 300,
              height: 100,
              child: TextField(
                controller: passwordController,
              ),
            ),
            ElevatedButton(
              child: const Text("Login"),
              onPressed: () async {
                await AuthService.signInAnonymously();
              },
              ),
            ElevatedButton(
              child: const Text("SignUp"),
              onPressed: () async {
                await AuthService.signUp(emailController.text,passwordController.text);
              },
              ),
            ElevatedButton(
              child: const Text("SignIn"),
              onPressed: () async {
                await AuthService.signIn(emailController.text,passwordController.text);
              },
              ),
          ],
        ),
      ),
    );
  }
}