import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/components/background.dart';
import 'package:flutter_auth/Screens/Signup/components/or_divider.dart';
import 'package:flutter_auth/Screens/Signup/components/social_icon.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/email_input_field.dart';

//import 'InputDeco_design.dart';

import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class forgot_password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: forgot(),
    );
  }
}

class forgot extends StatelessWidget {
  @override
  String _email = "";
  // String password = "";
  // String name = "";
  static const kPrimaryColor = Color(0xFF6F35A5);
  // TextEditingController _password = TextEditingController();
  // TextEditingController _confirmpassword = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.green),
                ),
              ),
              SizedBox(height: size.height * 0.001),
              Image.asset(
                'assets/icons/forgot.jpg',
                height: size.height * 0.35,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  color: kPrimaryLightColor,
                  borderRadius: BorderRadius.circular(29),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration:
                      buildInputDecoration(Icons.email, "Email", kPrimaryColor),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Please Enter a Email';
                    }
                    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                        .hasMatch(value)) {
                      return 'Please a valid Email';
                    }
                    return null;
                  },
                  onChanged: (String value) {
                    _email = value;
                  },
                ),
              ),
              RoundedButton(
                text: "SIGNUP",
                press: () {
                  if (_formkey.currentState!.validate()) {
                    print("successful");
                    print("+++++++++++++" + _email);

                    FirebaseAuth.instance
                        .sendPasswordResetEmail(email: _email)
                        .then((user) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => LoginScreen()));

                      // FirebaseAuth.instance
                      //     .createUserWithEmailAndPassword(
                      //         email: _email, password: password)
                      //     .then((user) {
                      //   Navigator.of(context).pushReplacementNamed('/login');
                      Fluttertoast.showToast(
                          msg: "Reset Password Link Send To Your Email",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1);
                    }).catchError((e) {
                      print(e);
                      print(e.hashCode);
                      Fluttertoast.showToast(
                          msg: "User NOT FOUND",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1);
                    });

                    return;
                  } else {
                    print("UnSuccessful");
                  }
                },
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

InputDecoration buildInputDecoration(IconData icons, String hinttext, colors) {
  return InputDecoration(
    hintText: hinttext,
    prefixIcon: Icon(
      icons,
      color: kPrimaryColor,
    ),
    border: InputBorder.none,

    // focusedBorder: OutlineInputBorder(
    //   borderRadius: BorderRadius.circular(45.0),
    //   borderSide: BorderSide(color: Colors.green, width: 1.5),
    // ),
    // border: OutlineInputBorder(
    //   borderRadius: BorderRadius.circular(25.0),
    //   borderSide: BorderSide(
    //     color: Color(0xFF6F35A5),
    //     width: 1.5,
    //   ),
    // ),
    // enabledBorder: OutlineInputBorder(
    //   borderRadius: BorderRadius.circular(25.0),
    //   borderSide: BorderSide(
    //     color: Colors.blue,
    //     width: 1.5,
    //   ),
    // ),
  );
}
