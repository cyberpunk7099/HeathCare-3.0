import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Welcome/components/body.dart';
import 'package:flutter_auth/home.dart';
import 'package:flutter_auth/symptom/info.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';

class Stomachlong extends StatefulWidget {
  @override
  State<Stomachlong> createState() => _StomachlongState();
}

class _StomachlongState extends State<Stomachlong> {
  bool _hasBeenPressed = false;

  @override

  MaterialStateProperty<Color> getColor(Color color, Color colorPressed){
    final getColor = (Set<MaterialState> states){
      if(states.contains(MaterialState.pressed)){
        return colorPressed;
      }else{
        return color;
      }

    };
    return MaterialStateProperty.resolveWith(getColor);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Abdominal Pain (Stomach Pain), Long-term',
          style: TextStyle(fontSize: 14),
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: FractionallySizedBox(
                  //alignment: Alignment.topCenter,
                  widthFactor: 1.0,
                  child: Container(
                      height: 120,
                      decoration: new BoxDecoration(

                          //color: Colors.green,
                          ),
                      child: OutlinedButton(
                        child: Text(
                          'Does your pain get worse after you eat a big meal?',
                          style: TextStyle(color: Colors.black45,fontSize: 20),
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.blueAccent,
                        ),
                        onPressed: () {

                        },
                      )),
                ),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(


                              onPressed: () {

                              },
                              style: ButtonStyle(
                                backgroundColor:  getColor(Colors.white,Colors.red),
                                foregroundColor: getColor(Colors.red, Colors.white),
                                //overlayColor: getColor(Colors.black, Colors.green),

                              ),


                              child:Text("No",style: TextStyle(fontSize: 20),),


                              ),

                            )),
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Info1()));
                              },
                              child: Text("Yes",style: TextStyle(fontSize: 20),),
                            ))),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: FractionallySizedBox(
                  //alignment: Alignment.topCenter,
                  widthFactor: 1.0,
                  child: Container(
                      height: 120,
                      decoration: new BoxDecoration(

                        //color: Colors.green,
                      ),
                      child: OutlinedButton(
                        child: Text(
                          'Do you feel pressure in your upper abdomen that gets worse when you bend over or lie down at night?',
                          style: TextStyle(color: Colors.black45,fontSize: 20),
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.blueAccent,
                        ),
                        onPressed: () {},
                      )),
                ),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(


                              onPressed: () {

                              },
                              style: ButtonStyle(
                                backgroundColor:  getColor(Colors.white,Colors.red),
                                foregroundColor: getColor(Colors.red, Colors.white),
                                //overlayColor: getColor(Colors.black, Colors.green),

                              ),


                              child:Text("No",style: TextStyle(fontSize: 20),),

                            ))),
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Info1()));},
                              child: Text("Yes",style: TextStyle(fontSize: 20),),
                            ))),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: FractionallySizedBox(
                  //alignment: Alignment.topCenter,
                  widthFactor: 1.0,
                  child: Container(
                      height: 120,
                      decoration: new BoxDecoration(

                        //color: Colors.green,
                      ),
                      child: OutlinedButton(
                        child: Text(
                          'Is the pain relieved by antacids? Is your pain improved by eating? (Peptic ulcer disease could be a potential cause).',
                          style: TextStyle(color: Colors.black45,fontSize: 20),
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.blueAccent,
                        ),
                        onPressed: () {},
                      )),
                ),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(


                              onPressed: () {

                              },
                              style: ButtonStyle(
                                backgroundColor:  getColor(Colors.white,Colors.red),
                                foregroundColor: getColor(Colors.red, Colors.white),
                                //overlayColor: getColor(Colors.black, Colors.green),

                              ),
                              child: Text("No",style: TextStyle(fontSize: 20),),
                            ))),
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Info2()));},
                              child: Text("Yes",style: TextStyle(fontSize: 20),),
                            ))),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: FractionallySizedBox(
                  //alignment: Alignment.topCenter,
                  widthFactor: 1.0,
                  child: Container(
                      height: 120,
                      decoration: new BoxDecoration(

                        //color: Colors.green,
                      ),
                      child: OutlinedButton(
                        child: Text(
                          'Does the pain start in your upper middle or upper right abdomen, and is it brought on by greasy or fatty foods?',
                          style: TextStyle(color: Colors.black45,fontSize: 20),
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.blueAccent,
                        ),
                        onPressed: () {},
                      )),
                ),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(


                              onPressed: () {

                              },
                              style: ButtonStyle(
                                backgroundColor:  getColor(Colors.white,Colors.red),
                                foregroundColor: getColor(Colors.red, Colors.white),
                                //overlayColor: getColor(Colors.black, Colors.green),

                              ),
                              child: Text("No",style: TextStyle(fontSize: 20),),
                            ))),
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Info3()));},
                              child: Text("Yes",style: TextStyle(fontSize: 20),),
                            ))),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: FractionallySizedBox(
                  //alignment: Alignment.topCenter,
                  widthFactor: 1.0,
                  child: Container(
                      height: 120,
                      decoration: new BoxDecoration(

                        //color: Colors.green,
                      ),
                      child: OutlinedButton(
                        child: Text(
                          'Does your pain get worse when you’re under stress or do you alternate between loose and hard bowel movements?',
                          style: TextStyle(color: Colors.black45,fontSize: 20),
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.blueAccent,
                        ),
                        onPressed: () {},
                      )),
                ),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(


                              onPressed: () {

                              },
                              style: ButtonStyle(
                                backgroundColor:  getColor(Colors.white,Colors.red),
                                foregroundColor: getColor(Colors.red, Colors.white),
                                //overlayColor: getColor(Colors.black, Colors.green),

                              ),
                              child: Text("No",style: TextStyle(fontSize: 20),),
                            ))),
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Info4()));},
                              child: Text("Yes",style: TextStyle(fontSize: 20),),
                            ))),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: FractionallySizedBox(
                  //alignment: Alignment.topCenter,
                  widthFactor: 1.0,
                  child: Container(
                      height: 120,
                      decoration: new BoxDecoration(

                        //color: Colors.green,
                      ),
                      child: OutlinedButton(
                        child: Text(
                          'Do you have soft or diarrhea-like bowel movements many times throughout the day AND mucus or blood in your stool?',
                          style: TextStyle(color: Colors.black45,fontSize: 20),
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.blueAccent,
                        ),
                        onPressed: () {},
                      )),
                ),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(


                              onPressed: () {

                              },
                              style: ButtonStyle(
                                backgroundColor:  getColor(Colors.white,Colors.red),
                                foregroundColor: getColor(Colors.red, Colors.white),
                                //overlayColor: getColor(Colors.black, Colors.green),

                              ),
                              child: Text("No",style: TextStyle(fontSize: 20),),
                            ))),
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Info5()));},
                              child: Text("Yes",style: TextStyle(fontSize: 20),),
                            ))),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: FractionallySizedBox(
                  //alignment: Alignment.topCenter,
                  widthFactor: 1.0,
                  child: Container(
                      height: 120,
                      decoration: new BoxDecoration(

                        //color: Colors.green,
                      ),
                      child: OutlinedButton(
                        child: Text(
                          'Do you have recurrent bouts of pain in the lower left side of your abdomen along with fever?',
                          style: TextStyle(color: Colors.black45,fontSize: 20),
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.blueAccent,
                        ),
                        onPressed: () {},
                      )),
                ),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(


                              onPressed: () {

                              },
                              style: ButtonStyle(
                                backgroundColor:  getColor(Colors.white,Colors.red),
                                foregroundColor: getColor(Colors.red, Colors.white),
                                //overlayColor: getColor(Colors.black, Colors.green),

                              ),
                              child: Text("No",style: TextStyle(fontSize: 20),),
                            ))),
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Info6()));},
                              child: Text("Yes",style: TextStyle(fontSize: 20),),
                            ))),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: FractionallySizedBox(
                  //alignment: Alignment.topCenter,
                  widthFactor: 1.0,
                  child: Container(
                      height: 120,
                      decoration: new BoxDecoration(

                        //color: Colors.green,
                      ),
                      child: OutlinedButton(
                        child: Text(
                          'Do you have bright red blood in or on your bowel movements?',
                          style: TextStyle(color: Colors.black45,fontSize: 20),
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.blueAccent,
                        ),
                        onPressed: () {},
                      )),
                ),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(


                              onPressed: () {

                              },
                              style: ButtonStyle(
                                backgroundColor:  getColor(Colors.white,Colors.red),
                                foregroundColor: getColor(Colors.red, Colors.white),
                                //overlayColor: getColor(Colors.black, Colors.green),

                              ),
                              child: Text("No",style: TextStyle(fontSize: 20),),
                            ))),
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Info7()));},
                              child: Text("Yes",style: TextStyle(fontSize: 20),),
                            ))),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: FractionallySizedBox(
                  //alignment: Alignment.topCenter,
                  widthFactor: 1.0,
                  child: Container(
                      height: 120,
                      decoration: new BoxDecoration(

                        //color: Colors.green,
                      ),
                      child: OutlinedButton(
                        child: Text(
                          'Has it been a few days or longer since you last had a bowel movement and do you have to strain when you have a bowel movement? Do you have bloating and/or abdomen distension?',
                          style: TextStyle(color: Colors.black45,fontSize: 18),
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.blueAccent,
                        ),
                        onPressed: () {},
                      )),
                ),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(


                              onPressed: () {

                              },
                              style: ButtonStyle(
                                backgroundColor:  getColor(Colors.white,Colors.red),
                                foregroundColor: getColor(Colors.red, Colors.white),
                                //overlayColor: getColor(Colors.black, Colors.green),

                              ),
                              child: Text("No",style: TextStyle(fontSize: 20),),
                            ))),
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Info8()));},
                              child: Text("Yes",style: TextStyle(fontSize: 20),),
                            ))),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: FractionallySizedBox(
                  //alignment: Alignment.topCenter,
                  widthFactor: 1.0,
                  child: Container(
                      height: 120,
                      decoration: new BoxDecoration(

                        //color: Colors.green,
                      ),
                      child: OutlinedButton(
                        child: Text(
                          'Has your appetite decreased? Have you lost 10 to 15 pounds over the past few months without trying?',
                          style: TextStyle(color: Colors.black45,fontSize: 20),
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.blueAccent,
                        ),
                        onPressed: () {},
                      )),
                ),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(


                              onPressed: () {

                              },
                              style: ButtonStyle(
                                backgroundColor:  getColor(Colors.white,Colors.red),
                                foregroundColor: getColor(Colors.red, Colors.white),
                                //overlayColor: getColor(Colors.black, Colors.green),

                              ),
                              child: Text("No",style: TextStyle(fontSize: 20),),
                            ))),
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Info9()));},
                              child: Text("Yes",style: TextStyle(fontSize: 20),),
                            ))),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: FractionallySizedBox(
                  //alignment: Alignment.topCenter,
                  widthFactor: 1.0,
                  child: Container(
                      height: 120,
                      decoration: new BoxDecoration(

                        //color: Colors.green,
                      ),
                      child: OutlinedButton(
                        child: Text(
                          'Do your skin or eyes have a yellow color, or is your urine dark, or are your stools turning white?',
                          style: TextStyle(color: Colors.black45,fontSize: 20),
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.blueAccent,
                        ),
                        onPressed: () {},
                      )),
                ),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(


                              onPressed: () {

                              },
                              style: ButtonStyle(
                                backgroundColor:  getColor(Colors.white,Colors.red),
                                foregroundColor: getColor(Colors.red, Colors.white),
                                //overlayColor: getColor(Colors.black, Colors.green),

                              ),
                              child: Text("No",style: TextStyle(fontSize: 20),),
                            ))),
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Info10()));},
                              child: Text("Yes",style: TextStyle(fontSize: 20),),
                            ))),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: FractionallySizedBox(
                  //alignment: Alignment.topCenter,
                  widthFactor: 1.0,
                  child: Container(
                      height: 120,
                      decoration: new BoxDecoration(

                        //color: Colors.green,
                      ),
                      child: OutlinedButton(
                        child: Text(
                          'Have you had fever, sore throat, or extreme tiredness? Do you have pain in your upper abdomen, mostly on the left upper quadrant?',
                          style: TextStyle(color: Colors.black45,fontSize: 20),
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.blueAccent,
                        ),
                        onPressed: () {},
                      )),
                ),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(


                              onPressed: () {

                              },
                              style: ButtonStyle(
                                backgroundColor:  getColor(Colors.white,Colors.red),
                                foregroundColor: getColor(Colors.red, Colors.white),
                                //overlayColor: getColor(Colors.black, Colors.green),

                              ),
                              child: Text("No",style: TextStyle(fontSize: 20),),
                            ))),
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Info11()));},
                              child: Text("Yes",style: TextStyle(fontSize: 20),),
                            ))),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: FractionallySizedBox(
                  //alignment: Alignment.topCenter,
                  widthFactor: 1.0,
                  child: Container(
                      height: 120,
                      decoration: new BoxDecoration(

                        //color: Colors.green,
                      ),
                      child: OutlinedButton(
                        child: Text(
                          'Do you have abdominal bloating and discomfort made worse by milk or wheat products?',
                          style: TextStyle(color: Colors.black45,fontSize: 20),
                        ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.blueAccent,
                        ),
                        onPressed: () {},
                      )),
                ),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(


                              onPressed: () {

                              },
                              style: ButtonStyle(
                                backgroundColor:  getColor(Colors.white,Colors.red),
                                foregroundColor: getColor(Colors.red, Colors.white),
                                //overlayColor: getColor(Colors.black, Colors.green),

                              ),
                              child: Text("No",style: TextStyle(fontSize: 20),),
                            ))),
                    Expanded(
                        child: Container(
                            height: 60,
                            child: OutlinedButton(
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Info12()));},
                              child: Text("Yes",style: TextStyle(fontSize: 20),),
                            ))),
                  ],
                ),
              )
            ],
          ),






        ],
      )),
    );

  }
}

class Stomachshort extends StatefulWidget {
  @override
  State<Stomachshort> createState() => _StomachshortState();
}

class _StomachshortState extends State<Stomachshort> {
  MaterialStateProperty<Color> getColor(Color color, Color colorPressed){
    final getColor = (Set<MaterialState> states){
      if(states.contains(MaterialState.pressed)){
        return colorPressed;
      }else{
        return color;
      }

    };
    return MaterialStateProperty.resolveWith(getColor);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Abdominal Pain (Stomach Pain), Short-term',
          style: TextStyle(fontSize: 15),
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
        Column(
        children: [
        Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: FractionallySizedBox(
          //alignment: Alignment.topCenter,
          widthFactor: 1.0,
          child: Container(
              height: 120,
              decoration: new BoxDecoration(

                //color: Colors.green,
              ),
              child: OutlinedButton(
                child: Text(
                  'Are you pregnant, or do you believe you might be pregnant?',
                  style: TextStyle(color: Colors.black45, fontSize: 20),
                ),
                style: OutlinedButton.styleFrom(
                  primary: Colors.blueAccent,
                ),
                onPressed: () {

                },
              )),
        ),
      ),
      ListTile(
        title: Row(
          children: <Widget>[
            Expanded(
                child: Container(
                  height: 60,
                  child: OutlinedButton(


                    onPressed: () {

                    },
                    style: ButtonStyle(
                      backgroundColor: getColor(Colors.white, Colors.red),
                      foregroundColor: getColor(Colors.red, Colors.white),
                      //overlayColor: getColor(Colors.black, Colors.green),

                    ),


                    child: Text("No", style: TextStyle(fontSize: 20),),


                  ),

                )),
            Expanded(
                child: Container(
                    height: 60,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Info13()));
                      },
                      child: Text("Yes", style: TextStyle(fontSize: 20),),
                    ))),
          ],
        ),
      )
        ],
        ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: FractionallySizedBox(
                      //alignment: Alignment.topCenter,
                      widthFactor: 1.0,
                      child: Container(
                          height: 120,
                          decoration: new BoxDecoration(

                            //color: Colors.green,
                          ),
                          child: OutlinedButton(
                            child: Text(
                              'Is your stomach very tender to touch? Does it hurt when you are driving and hit a bump or a pothole in the road? Do you have bloody diarrhea or stools that are black or tarry? Are you vomiting blood? Do you have a fever, in addition to your abdominal pain?',
                              style: TextStyle(color: Colors.black45, fontSize: 16),
                            ),
                            style: OutlinedButton.styleFrom(
                              primary: Colors.blueAccent,
                            ),
                            onPressed: () {

                            },
                          )),
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: <Widget>[
                        Expanded(
                            child: Container(
                              height: 60,
                              child: OutlinedButton(


                                onPressed: () {

                                },
                                style: ButtonStyle(
                                  backgroundColor: getColor(Colors.white, Colors.red),
                                  foregroundColor: getColor(Colors.red, Colors.white),
                                  //overlayColor: getColor(Colors.black, Colors.green),

                                ),


                                child: Text("No", style: TextStyle(fontSize: 20),),


                              ),

                            )),
                        Expanded(
                            child: Container(
                                height: 60,
                                child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => Info14()));
                                  },
                                  child: Text("Yes", style: TextStyle(fontSize: 20),),
                                ))),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: FractionallySizedBox(
                      //alignment: Alignment.topCenter,
                      widthFactor: 1.0,
                      child: Container(
                          height: 120,
                          decoration: new BoxDecoration(

                            //color: Colors.green,
                          ),
                          child: OutlinedButton(
                            child: Text(
                              'Do you have a sudden sharp pain that starts in the back near the ribs and moves down toward the groin?',
                              style: TextStyle(color: Colors.black45, fontSize: 20),
                            ),
                            style: OutlinedButton.styleFrom(
                              primary: Colors.blueAccent,
                            ),
                            onPressed: () {

                            },
                          )),
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: <Widget>[
                        Expanded(
                            child: Container(
                              height: 60,
                              child: OutlinedButton(


                                onPressed: () {

                                },
                                style: ButtonStyle(
                                  backgroundColor: getColor(Colors.white, Colors.red),
                                  foregroundColor: getColor(Colors.red, Colors.white),
                                  //overlayColor: getColor(Colors.black, Colors.green),

                                ),


                                child: Text("No", style: TextStyle(fontSize: 20),),


                              ),

                            )),
                        Expanded(
                            child: Container(
                                height: 60,
                                child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => Info15()));
                                  },
                                  child: Text("Yes", style: TextStyle(fontSize: 20),),
                                ))),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: FractionallySizedBox(
                      //alignment: Alignment.topCenter,
                      widthFactor: 1.0,
                      child: Container(
                          height: 120,
                          decoration: new BoxDecoration(

                            //color: Colors.green,
                          ),
                          child: OutlinedButton(
                            child: Text(
                              'Do you have a mild ache or burning pain in the upper abdomen, or cramping pain that comes and goes?',
                              style: TextStyle(color: Colors.black45, fontSize: 20),
                            ),
                            style: OutlinedButton.styleFrom(
                              primary: Colors.blueAccent,
                            ),
                            onPressed: () {

                            },
                          )),
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: <Widget>[
                        Expanded(
                            child: Container(
                              height: 60,
                              child: OutlinedButton(


                                onPressed: () {

                                },
                                style: ButtonStyle(
                                  backgroundColor: getColor(Colors.white, Colors.red),
                                  foregroundColor: getColor(Colors.red, Colors.white),
                                  //overlayColor: getColor(Colors.black, Colors.green),

                                ),


                                child: Text("No", style: TextStyle(fontSize: 20),),


                              ),

                            )),
                        Expanded(
                            child: Container(
                                height: 60,
                                child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => Info16()));
                                  },
                                  child: Text("Yes", style: TextStyle(fontSize: 20),),
                                ))),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: FractionallySizedBox(
                      //alignment: Alignment.topCenter,
                      widthFactor: 1.0,
                      child: Container(
                          height: 120,
                          decoration: new BoxDecoration(

                            //color: Colors.green,
                          ),
                          child: OutlinedButton(
                            child: Text(
                              'Has it been a few days or longer since you have had a bowel movement and do you have bloating or distension of your abdomen? Do you have to strain when you have a bowel movement?',
                              style: TextStyle(color: Colors.black45, fontSize: 17),
                            ),
                            style: OutlinedButton.styleFrom(
                              primary: Colors.blueAccent,
                            ),
                            onPressed: () {

                            },
                          )),
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: <Widget>[
                        Expanded(
                            child: Container(
                              height: 60,
                              child: OutlinedButton(


                                onPressed: () {

                                },
                                style: ButtonStyle(
                                  backgroundColor: getColor(Colors.white, Colors.red),
                                  foregroundColor: getColor(Colors.red, Colors.white),
                                  //overlayColor: getColor(Colors.black, Colors.green),

                                ),


                                child: Text("No", style: TextStyle(fontSize: 20),),


                              ),

                            )),
                        Expanded(
                            child: Container(
                                height: 60,
                                child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => Info17()));
                                  },
                                  child: Text("Yes", style: TextStyle(fontSize: 20),),
                                ))),
                      ],
                    ),
                  )
                ],
              ),






            ],
        )),
    );

  }
}




class Cold extends StatefulWidget {
  @override
  State<Cold> createState() => _ColdState();
}

class _ColdState extends State<Cold> {
  MaterialStateProperty<Color> getColor(Color color, Color colorPressed){
    final getColor = (Set<MaterialState> states){
      if(states.contains(MaterialState.pressed)){
        return colorPressed;
      }else{
        return color;
      }

    };
    return MaterialStateProperty.resolveWith(getColor);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cold and Flu',
          style: TextStyle(fontSize: 15),
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: FractionallySizedBox(
                      //alignment: Alignment.topCenter,
                      widthFactor: 1.0,
                      child: Container(
                          height: 120,
                          decoration: new BoxDecoration(

                            //color: Colors.green,
                          ),
                          child: OutlinedButton(
                            child: Text(
                              'Do you have a sore throat and headache without nasal drainage or a cough?',
                              style: TextStyle(color: Colors.black45, fontSize: 20),
                            ),
                            style: OutlinedButton.styleFrom(
                              primary: Colors.blueAccent,
                            ),
                            onPressed: () {

                            },
                          )),
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: <Widget>[
                        Expanded(
                            child: Container(
                              height: 60,
                              child: OutlinedButton(


                                onPressed: () {

                                },
                                style: ButtonStyle(
                                  backgroundColor: getColor(Colors.white, Colors.red),
                                  foregroundColor: getColor(Colors.red, Colors.white),
                                  //overlayColor: getColor(Colors.black, Colors.green),

                                ),


                                child: Text("No", style: TextStyle(fontSize: 20),),


                              ),

                            )),
                        Expanded(
                            child: Container(
                                height: 60,
                                child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => Info18()));
                                  },
                                  child: Text("Yes", style: TextStyle(fontSize: 20),),
                                ))),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: FractionallySizedBox(
                      //alignment: Alignment.topCenter,
                      widthFactor: 1.0,
                      child: Container(
                          height: 120,
                          decoration: new BoxDecoration(

                            //color: Colors.green,
                          ),
                          child: OutlinedButton(
                            child: Text(
                              'Are you experiencing wheezing, shortness of breath, and a persistent cough that brings up clear, yellow, or green mucus?',
                              style: TextStyle(color: Colors.black45, fontSize: 16),
                            ),
                            style: OutlinedButton.styleFrom(
                              primary: Colors.blueAccent,
                            ),
                            onPressed: () {

                            },
                          )),
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: <Widget>[
                        Expanded(
                            child: Container(
                              height: 60,
                              child: OutlinedButton(


                                onPressed: () {

                                },
                                style: ButtonStyle(
                                  backgroundColor: getColor(Colors.white, Colors.red),
                                  foregroundColor: getColor(Colors.red, Colors.white),
                                  //overlayColor: getColor(Colors.black, Colors.green),

                                ),


                                child: Text("No", style: TextStyle(fontSize: 20),),


                              ),

                            )),
                        Expanded(
                            child: Container(
                                height: 60,
                                child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => Info19()));
                                  },
                                  child: Text("Yes", style: TextStyle(fontSize: 20),),
                                ))),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: FractionallySizedBox(
                      //alignment: Alignment.topCenter,
                      widthFactor: 1.0,
                      child: Container(
                          height: 120,
                          decoration: new BoxDecoration(

                            //color: Colors.green,
                          ),
                          child: OutlinedButton(
                            child: Text(
                              'Are you experiencing sneezing, a sore throat with a cough, a headache, congestion, and a runny nose?',
                              style: TextStyle(color: Colors.black45, fontSize: 20),
                            ),
                            style: OutlinedButton.styleFrom(
                              primary: Colors.blueAccent,
                            ),
                            onPressed: () {

                            },
                          )),
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: <Widget>[
                        Expanded(
                            child: Container(
                              height: 60,
                              child: OutlinedButton(


                                onPressed: () {

                                },
                                style: ButtonStyle(
                                  backgroundColor: getColor(Colors.white, Colors.red),
                                  foregroundColor: getColor(Colors.red, Colors.white),
                                  //overlayColor: getColor(Colors.black, Colors.green),

                                ),


                                child: Text("No", style: TextStyle(fontSize: 20),),


                              ),

                            )),
                        Expanded(
                            child: Container(
                                height: 60,
                                child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => Info20()));
                                  },
                                  child: Text("Yes", style: TextStyle(fontSize: 20),),
                                ))),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: FractionallySizedBox(
                      //alignment: Alignment.topCenter,
                      widthFactor: 1.0,
                      child: Container(
                          height: 120,
                          decoration: new BoxDecoration(

                            //color: Colors.green,
                          ),
                          child: OutlinedButton(
                            child: Text(
                              'Do you have pressure or pain around your eyes, cheeks, nose, or forehead; nasal congestion; a headache; a dry cough; and/or any type of discharge from your nose?',
                              style: TextStyle(color: Colors.black45, fontSize: 17),
                            ),
                            style: OutlinedButton.styleFrom(
                              primary: Colors.blueAccent,
                            ),
                            onPressed: () {

                            },
                          )),
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: <Widget>[
                        Expanded(
                            child: Container(
                              height: 60,
                              child: OutlinedButton(


                                onPressed: () {

                                },
                                style: ButtonStyle(
                                  backgroundColor: getColor(Colors.white, Colors.red),
                                  foregroundColor: getColor(Colors.red, Colors.white),
                                  //overlayColor: getColor(Colors.black, Colors.green),

                                ),


                                child: Text("No", style: TextStyle(fontSize: 20),),


                              ),

                            )),
                        Expanded(
                            child: Container(
                                height: 60,
                                child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => Info21()));
                                  },
                                  child: Text("Yes", style: TextStyle(fontSize: 20),),
                                ))),
                      ],
                    ),
                  )
                ],
              ),







            ],
          )),
    );

  }
}


