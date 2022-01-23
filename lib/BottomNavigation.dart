import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_auth/BMI/bmi.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/home.dart';
import 'package:flutter_auth/news.dart';
import 'package:flutter_auth/pedometer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => new _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _pageIndex = 0;
  PageController? _pageController;

  List<Widget> tabPages = [
    Home(),
    Screen1(),
    Screen2(),
    Screen3(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _pageIndex,
          onTap: onTabTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: kPrimaryColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home_filled),
            ),
            BottomNavigationBarItem(
              label: 'Finess',
              icon: Icon(Icons.fitness_center),
            ),
            BottomNavigationBarItem(
              label: 'News',
              icon: Icon(Icons.library_books),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person),
            ),
          ],
        ),
        body: PageView(
          children: tabPages,
          onPageChanged: onPageChanged,
          controller: _pageController,
        ),
      ),
    );
  }

  void onPageChanged(int page) {
    setState(() {
      this._pageIndex = page;
    });
  }

  void onTabTapped(int index) {
    this._pageController!.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}

class Screen1 extends StatefulWidget {
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness'),
        backgroundColor: kPrimaryColor,
      ),
      body: Center(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PEDO()));
                    },
                    child: Container(
                      height: 500,
                      width: 130,
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
                          image: AssetImage('assets/icons/Run.gif'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                  VerticalDivider(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BMI()));
                    },
                    child: Container(
                      height: 500,
                      width: 130,
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
                          image: AssetImage('assets/icons/BMI.png'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 10,
                color: Colors.white,
              ),
              Container(
                height: 30,
                width: 500,

                //color: Colors.white,
                child: Text(
                  "  PEDOMETER                BMI",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}

class Screen2 extends StatefulWidget {
  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
        backgroundColor: kPrimaryColor,


      ),
      body: SafeArea(
        child: Column(
          children: [

          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Screen22()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
              height: 250,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: kPrimaryColor, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
                image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/icons/news.png'),
                  fit: BoxFit.contain,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Align( alignment: Alignment.bottomCenter,
                    child: Text(" End of Covid-19 pandemic in Europe ‘plausible’ after Omicron: WHO",
                      style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.black)),)

                ),
              ),
        ),
            ),
          ),




          ],
        ),
      ),

    );
  }
}

class Screen3 extends StatefulWidget {
  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  Future<String> getName() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String email = sharedPreferences.getString('_email').toString();
    return email;
  }

  String mail = '';
  @override
  void initState() {
    getName().then(updateName);
    super.initState();
  }

  Future logout() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove('_email');
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Chetan',style: TextStyle(color: Colors.black,fontSize: 20),),
            accountEmail: Text("cyberpunk7099@gmail.com",style: TextStyle(color: Colors.black,fontSize: 15),),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child : Icon(
                  Icons.person,
                  size: 50,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/contact_banner.png?alt=media&token=03f433bd-07e5-462c-9fa6-057ee6e2ddf3')),
            ),
          ),


          ListTile(
            leading: Icon(Icons.mail_outline),
            title: Text('Contact Us'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.info_outline_rounded),
            title: Text('About Us'),
          ),
         // Divider(),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Policies'),
            onTap: () {
              showAboutDialog(
                  context: context,
                  applicationVersion: '1.0.0',
                  applicationName: "HeathCare ",
                  applicationLegalese:
                  "copyrights are received by Ⓒ CM ",
                 //applicationIcon: Image.asset('images/app.png')
              );
            }
          ),
          ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                logout();
              }),
          Divider(),
          ListTile(
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => SystemNavigator.pop(),
          ),
        ],
      ),
    );
  }

  void updateName(String email) {
    setState(() {
      this.mail = email;
    });
  }
}
