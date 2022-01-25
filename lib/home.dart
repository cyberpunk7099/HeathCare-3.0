import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/BMI/bmi.dart';
import 'package:flutter_auth/BMI/components/round_icon_button.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/constants.dart';

import 'package:flutter_auth/pedometer.dart';
import 'package:flutter_auth/sd/skin.dart';
import 'package:flutter_auth/shared.dart';
import 'package:flutter_auth/symptom/checker.dart';
import 'package:flutter_auth/symptom/info.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_fonts/google_fonts.dart';

import 'BottomNavigation.dart';
//import 'package:flutter_auth/components/rounded_button.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  String? email = "";
  String name = '';

  @override
  Future getEmail() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      email = sharedPreferences.getString('_email');
    });
  }

  Future logout() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove('_email');
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }

  @override
  void initState() {
    super.initState();
    getEmail();
    name = UserSimplePreferences.getUsername() ?? '';
  }

  void sad(){
    AlertDialog alert = AlertDialog(
      title: Text("This Will Cheer you up "),
      content: Text("What did the fish say when he hit the wall? \nDAM!"),
    );
  }



  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('HealthCare'),
          backgroundColor: kPrimaryColor,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search,size: 30,),
                onPressed: () {
                  showSearch(context: context, delegate: DataSearch());
                })
          ]),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // Container(
              //   child: ElevatedButton(
              //     onPressed: () {
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) => Checker()));
              //     },
              //     child: Text("Symptoms Checker"),
              //   ),
              // ),
              // Container(
              //   child: ElevatedButton(
              //     onPressed: () {
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) => Skin()));
              //     },
              //     child: Text("Skin Infection Analyser "),
              //   ),
              // ),
              Container(
                height: 200,
                width: width,

                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Row(
                        children:[
                          Text("Hello,",style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white)),),
                          Text(" $name ",style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 30,fontWeight: FontWeight.normal,color: Colors.white)),)

                        ]
                      ),
                      Text("\nHow do you Feeling Today?",style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.white)),),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(80,5,80,0 ),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            children: [

                              InkWell(
                                onTap: () async {
                                  print("you clicked sad");
                                  showDialog(
                                      context: context,
                                      builder: (_) => AlertDialog(
                                          title: Text("You Are Already 'Cheered Up'"),
                                          content: Text('Then You Are Good To Go') )
                                  );

                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: kPrimaryLightColor,
                                    border: Border.all(color: kPrimaryColor, width: 1),
                                    borderRadius: BorderRadius.all(Radius.circular(25)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                    image: DecorationImage(
                                      image: AssetImage('assets/icons/happy.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              VerticalDivider(
                                thickness:20,
                              ),
                              InkWell(
                                onTap: () async {
                                  print("you clicked sad");
                                  showDialog(
                                      context: context,
                                      builder: (_) => AlertDialog(
                                          title: Text("This will 'Cheer You Up'"),
                                          content: Text('"THE BEST \n WAY TO \n PREDICT THE \n FUTURE IS TO \n CREATE IT"') )
                                  );

                                },



                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: kPrimaryLightColor,
                                    border: Border.all(color: kPrimaryColor, width: 1),
                                    borderRadius: BorderRadius.all(Radius.circular(25)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                    image: DecorationImage(
                                      image: AssetImage('assets/icons/normal.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              VerticalDivider(
                                thickness: 20,
                              ),
                              InkWell(
                                onTap: () async {
                                  print("you clicked sad");
                                  showDialog(
                                      context: context,
                                      builder: (_) => AlertDialog(
                                      title: Text("This will 'Cheer You Up'"),
                                  content: Text('-- What did the fish say when he hit the wall?\n-- DAM!') )
                                  );

                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: kPrimaryLightColor,
                                    border: Border.all(color: kPrimaryColor, width: 1),
                                    borderRadius: BorderRadius.all(Radius.circular(25)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                    image: DecorationImage(
                                      image: AssetImage('assets/icons/sad.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  border: Border.all(color: kPrimaryColor, width: 5),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                  // image: DecorationImage(
                  //   image: AssetImage('assets/icons/pedometer.png'),
                  //   fit: BoxFit.fill,
                  // ),
                ),
              ),
                  //Symptom Checker

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Checker()));
                      },
                      child: Container(
                        height: 200,
                        width: width,
                        decoration: BoxDecoration(
                          color: kPrimaryLightColor,
                          border: Border.all(color: kPrimaryColor, width: 5),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                          image: DecorationImage(
                            alignment: Alignment.centerLeft,
                            image: AssetImage('assets/icons/symptom.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Align( alignment: Alignment.centerRight,
                              child: Text(" Symptom\nChecker",style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.black)),)

                          ),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 10,
                    thickness: 10,
                    color: Colors.white,
                  ),
                  //Skin Disease analyser
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Skin()));
                      },
                      child: Container(
                        height: 200,
                        width: width,
                        decoration: BoxDecoration(
                          color: kPrimaryLightColor,
                          border: Border.all(color: kPrimaryColor, width: 5),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                          image: DecorationImage(
                            alignment: Alignment.centerLeft,
                            image: AssetImage('assets/icons/skin.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Align( alignment: Alignment.centerRight,
                              child: Text(" Skin\nInfection\nDetector ",style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.black)),)

                      ),
                        ),
                    ),
                  ),


                  ),],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _pageIndex,
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: kPrimaryColor,
      //   selectedItemColor: Colors.white,
      //   unselectedItemColor: Colors.white.withOpacity(.60),
      //   selectedFontSize: 14,
      //   unselectedFontSize: 14,
      //   onTap: onTabTapped,
      //   items: [
      //     BottomNavigationBarItem(
      //       title: Text('Home'),
      //       icon: Icon(Icons.home_filled),
      //     ),
      //     BottomNavigationBarItem(
      //       title: Text('Fitness'),
      //       icon: Icon(Icons.fitness_center),
      //     ),
      //     BottomNavigationBarItem(
      //       title: Text('News'),
      //       icon: Icon(Icons.library_books),
      //     ),
      //     BottomNavigationBarItem(
      //       title: Text('Profile'),
      //       icon: Icon(Icons.person),
      //     ),
      //   ],
      // )
    );
  }
}

void setState(Null Function() param0) {}

void SetState(Null Function() param0) {}

class DataSearch extends SearchDelegate<String?> {
  DataSearch() : super(searchFieldLabel: "Disease name");
  final Diseases = [
    "Hernia",
    "Cancer",
    "Cold and Flu",
    "Appendicitis",
    "Lactose Intolerance",
    "Acute Bronchitis",
    "Diverticular Disease",
    "Gallstones",
    "Hemorrhoids",
    "Constipation",
    "Stomach Ulcers"
  ];

  final recentDiseases = ["Hernia", "Cold and Flu"];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 100,
        width: 500,
        color: kPrimaryLightColor,
        child: GestureDetector(
          onTap: () {
            if (query == "Hernia" || query == "Her") {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Info2()));
            } else if (query == "Cold and Flu" || query == "Cold") {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Info2()));
            } else if (query == "Stomach Ulcers" || query == "Stomach") {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Info2()));
            } else if (query == "GallStones" || query == "Gall") {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Info3()));
            } else if (query == "Diverticular Disease" ||
                query == "Diverticular") {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Info6()));
            } else if (query == "Hemorrhoids" || query == "Hemo") {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Info7()));
            } else if (query == "Constipation" || query == "Con") {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Info8()));
            } else if (query == "Cancer" || query == "Can") {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Info9()));
            } else if (query == "Lactose Intolerance" || query == "Lactose") {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Info12()));
            } else if (query == "Acute Bronchitis" || query == "Acute") {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Info19()));
            } else if (query == "Appendicitis" || query == "App") {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Info14()));
            } else {
              Fluttertoast.showToast(
                  msg: "Your Disease Not Found",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1);
            }
          },
          child: Card(
            color: kPrimaryLightColor,
            child: Center(
                child: Text(
              query,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            )),
          ),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentDiseases
        : Diseases.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          // showResults(context);

          if (query == "Hernia" || query == "Her") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Info1()));
          } else if (query == "Cold and Flu" || query == "Cold") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Info2()));
          } else if (query == "Stomach Ulcers" || query == "Stomach") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Info2()));
          } else if (query == "GallStones" || query == "Gall") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Info3()));
          } else if (query == "Diverticular Disease" ||
              query == "Diverticular") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Info6()));
          } else if (query == "Hemorrhoids" || query == "Hemo") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Info7()));
          } else if (query == "Constipation" || query == "Con") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Info8()));
          } else if (query == "Cancer" || query == "Can") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Info9()));
          } else if (query == "Lactose Intolerance" || query == "Lactose") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Info12()));
          } else if (query == "Acute Bronchitis" || query == "Acute") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Info19()));
          } else if (query == "Appendicitis" || query == "App") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Info14()));
          } else {
            Fluttertoast.showToast(
                msg: "Login Successful",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1);
          }
        },
        leading: Icon(Icons.add_circle),
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.normal),
                )
              ]),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}
