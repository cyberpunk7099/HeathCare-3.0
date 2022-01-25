import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/shared.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'BottomNavigation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  var email = sharedPreferences.getString('_email');

  await UserSimplePreferences.init();
  runApp(
      MaterialApp(home: email == null ? WelcomeScreen() : BottomNavigation()));
}



class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: BottomNavigation(),
    );
  }
}
