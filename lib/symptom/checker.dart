import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Welcome/components/body.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/home.dart';
import 'package:flutter_auth/symptom/question.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';



class Checker extends StatefulWidget {

  @override
  State<Checker> createState() => _CheckerState();
}

class _CheckerState extends State<Checker> {
  @override


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Symptom Checker'),
        backgroundColor: kPrimaryColor,
      ),
      //body: Body(),
      body: ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
      Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 5),

      child: Container(
        height: 80,
        child: OutlinedButton.icon(
          icon: Icon(
            Icons.arrow_forward_ios_outlined
          ),

          label: Text('Abdominal Pain (Stomach Pain), Long-term',
           ),

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Stomachlong()));
          },

        ),
      ),
    ),

        Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton.icon(
              icon: Icon(
                  Icons.arrow_forward_ios_outlined
              ),

              label: Text('Abdominal Pain (Stomach Pain), Short-term',
              ),

              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Stomachshort()));
              },

            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Ankle Problems'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Chest Pain in Infants and Children'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Chest Pain, Acute'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Chest Pain, Chronic'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Cold and Flu'),
                    ],
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Cold()));
              },

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Cough'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Diarrhea'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Ear Problems'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Elimination Problems or Constipation'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Elimination Problems or Constipation \n in Infants and Children'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Eye Problems'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Facial Swelling'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Feeding Problems in Infants and Children'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Fever'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Fever in Infants and Children'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Foot Problems'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Genital Problems in Infants (Female)'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Genital Problems in Infants (Male)'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Genital Problems in Men'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Genital Problems in Women'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Hair Loss'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Hand/Wrist/Arm Problems'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Headaches'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Hearing Problems'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Hip Problems'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Knee Problems'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Leg Problems'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Lower Back Pain'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Menstrual Cycle Problems'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Mouth Problems'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Mouth Problems in Infants and Children'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Nausea and Vomiting'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Nausea and Vomiting in Infants and \n Children'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Neck Pain'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Neck Swelling'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Shortness of Breath'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Shortness of Breath in Infants and \n Children'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Shoulder Problems'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Skin Rashes & Other Skin Problems'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Throat Problems'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Tooth Problems'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),Padding(
          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
          child: Container(
            height: 80,
            child: OutlinedButton(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Icon(Icons.arrow_forward_ios_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Urination Problems'),
                    ],
                  ),
                ],
              ),
              onPressed: () {},

            ),
          ),
        ),















      ]  )

      );

  }
}
