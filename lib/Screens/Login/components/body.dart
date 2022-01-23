import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/BottomNavigation.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/forgot_password.dart';
import 'package:flutter_auth/home.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
//import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  Body({
    Key? key,
  }) : super(key: key);
  String email = "";
  String _email = "";
  String _password = "";
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "LOGIN",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.green),
              ),
              SizedBox(height: size.height * 0.03),
              Image.asset(
                "assets/icons/signin.png",
                height: size.height * 0.35,
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  color: kPrimaryLightColor,
                  borderRadius: BorderRadius.circular(29),
                ),
                child: TextFormField(
                  controller: emailcontroller,
                  keyboardType: TextInputType.text,
                  decoration: buildInputDecoration(
                      Icons.person, "Email", kPrimaryColor),
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
                  onChanged: (value) {
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
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: buildInputDecoration(
                      Icons.lock, "Password", kPrimaryColor),
                  validator: (String? value) {
                    if (value!.isEmpty || value.length < 6) {
                      return 'Please a Enter Password';
                    }

                    return null;
                  },
                  onChanged: (value) {
                    _password = value;
                  },
                ),
              ),
              RoundedButton(
                text: "LOGIN",
                press: () {
                  if (_formkey.currentState!.validate()) {
                    FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: _email, password: _password)
                        .then((user) async {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => BottomNavigation()));
                      Fluttertoast.showToast(
                          msg: "Login Successful",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1);

                      // Sharedpreferences
                      final SharedPreferences sharedPreferences =
                          await SharedPreferences.getInstance();
                      sharedPreferences.setString(
                          '_email', emailcontroller.text.toString());
                    }).catchError((e) {
                      print(e);
                      Fluttertoast.showToast(
                          msg: "Email and Password Doesn't Match",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1);
                    });
                    return;
                  } else {}
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return forgot_password();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: kPrimaryColor),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
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

  InputDecoration buildInputDecoration(
      IconData icons, String hinttext, colors) {
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
}
