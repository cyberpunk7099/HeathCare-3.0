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

class Body extends StatelessWidget {
  @override
  String _email = "";
  String password = "";
  String name = "";
  static const kPrimaryColor = Color(0xFF6F35A5);
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();
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
                padding: const EdgeInsets.all(50.0),
                child: Text(
                  "SIGNUP",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.green),
                ),
              ),
              SizedBox(height: size.height * 0.001),
              Image.asset(
                'assets/icons/signup.png',
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
                  cursorColor: kPrimaryColor,
                  keyboardType: TextInputType.text,
                  decoration: buildInputDecoration(
                      Icons.person, "Full Name", kPrimaryColor),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Name';
                    }
                    return null;
                  },
                  onChanged: (String value) {
                    name = value;
                  },
                ),
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
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  color: kPrimaryLightColor,
                  borderRadius: BorderRadius.circular(29),
                ),
                child: TextFormField(
                  controller: _password,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: buildInputDecoration(
                      Icons.lock, "Password", kPrimaryColor),
                  validator: (String? value) {
                    if (value!.isEmpty || value.length < 6) {
                      return 'Please a Enter Password more than 6 charcters';
                    }

                    return null;
                  },
                  onChanged: (value) {
                    password = value;
                  },
                ),
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
                  controller: _confirmpassword,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: buildInputDecoration(
                      Icons.lock, "Confirm Password", kPrimaryColor),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Please re-enter password';
                    }
                    print(_password.text);

                    print(_confirmpassword.text);

                    if (_password.text != _confirmpassword.text) {
                      return "Password does not match";
                    }

                    return null;
                  },
                ),
              ),
              RoundedButton(
                text: "SIGNUP",
                press: () {
                  if (_formkey.currentState!.validate()) {
                    print("successful");
                    print("+++++++++++++" + _email);
                    print("++++++++++++++" + password + "+++++++++++");
                    FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                            email: _email, password: password)
                        .then((user) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                      Fluttertoast.showToast(
                          msg: "SignUp Successful",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1);
                    }).catchError((e) {});

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
