import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/auth_services.dart';

class MainPage extends StatelessWidget {
  final User user;
  const MainPage(this.user, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Page"),),
      body: Center(
        child: Column(
          children: [
            Text(user.uid),
            ElevatedButton(onPressed: () async {
              await AuthService.signOut();
            }, child: Text("sign Out"))
          ],
        ),

      ),
    );
  }
}