import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/login_page.dart';
import 'package:flutter_firebase_auth/main_page.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
  
    User? firebaseUser = Provider.of<User?>(context);
    return (firebaseUser == null) ? const LoginPage() : MainPage(firebaseUser);
  }
}