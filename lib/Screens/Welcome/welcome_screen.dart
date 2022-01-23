import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Welcome/components/body.dart';
import 'package:flutter_auth/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

String? finalemail;

class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
