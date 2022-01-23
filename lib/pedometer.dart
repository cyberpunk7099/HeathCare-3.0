import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'dart:async';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pedometer/pedometer.dart';
import 'package:decimal/decimal.dart';



String formatDate(DateTime d) {
  return d.toString().substring(0, 19);
}

void main() {
  runApp(PEDO());
}

class PEDO extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<PEDO> {
   late Stream<StepCount> _stepCountStream;
   late Stream<PedestrianStatus> _pedestrianStatusStream;
  String _status = '?',fault= '';
  String _steps = '?';
  var dist;
   double? _num;
   double? _convert;
   String _km = "?";
   double? _kmx;
   String _calories = "?";

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  void onStepCount(StepCount event) async{
    print(event);
    setState(() {
      _steps = event.steps.toString();
      _steps ="$_steps";
    });

    var dist = event.steps;
    double y = (dist + .0);

    setState(() {
      _num =  y;

    });


    var long3 = (_num);
    long3 = num.parse(y.toStringAsFixed(2)) as double?;
    var long4 = (long3! / 10000);

    int decimals = 1;
    int fac = pow(10, decimals) as int;
    double d = long4;
    d = (d * fac).round() / fac;
    print("d: $d");

    getDistanceRun(_num!);

    setState(() {
      _convert = d;
      print(_convert);
    });


  }

  void onPedestrianStatusChanged(PedestrianStatus event) {
    print(event);
    setState(() {
      _status = event.status;
    });
  }

  void onPedestrianStatusError(error) {
    print('onPedestrianStatusError: $error');
    setState(() {
      _status = 'Pedestrian Status not available';
    });
    print(_status);
  }

  void onStepCountError(error) {
    print('onStepCountError: $error');
    setState(() {
      fault = 'Step Count not available';
    });
  }

  void initPlatformState() {
    _pedestrianStatusStream = Pedometer.pedestrianStatusStream;
    _pedestrianStatusStream
        .listen(onPedestrianStatusChanged)
        .onError(onPedestrianStatusError);

    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount).onError(onStepCountError);

    if (!mounted) return;
  }




   void reset() {
     setState(() {
       int steps = 0;
       steps = 0;
       _steps = "$steps";
       _num = 0;
       int kilo = 0;
       _km = "$kilo";
       double burn =0;
       _kmx= burn ;
     });
   }


   void getDistanceRun(double _num) async{

     var distance = ((_num * 78) / 100000);
     distance = num.parse(distance.toStringAsFixed(2)) as double; //dos decimales
     var distancekmx = distance * 34;
     distancekmx = num.parse(distancekmx.toStringAsFixed(2)) as double;
     //print(distance.runtimeType);
     setState(() {
       _km = "$distance";
       //print(_km);
     });
     setState(() {
       _kmx = num.parse(distancekmx.toStringAsFixed(2)) as double?;
     });
   }

   void getBurnedRun() async {
     setState(() {


       var calories = _kmx;
       _calories = "$calories";


     });
   }



  @override
  Widget build(BuildContext context) {
    getBurnedRun();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pedometer'),
          backgroundColor: kPrimaryColor,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CircularPercentIndicator(
              radius: 100.0,
                lineWidth: 13.0,
                animation: true,
               center: Align(
                 alignment: Alignment.centerRight,
                 child: Container(
                    child: new Row(

                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          padding: EdgeInsets.only(left: 20.0),
                          child: Icon(
                            FontAwesomeIcons.walking,
                            size: 50.0,
                            color: Colors.black,

                          ),
                        ),
                        Container(
                          //color: Colors.orange,
                          child: Text(
                            _steps,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                                color: Colors.purpleAccent),
                          ),
                          // height: 50.0,
                          // width: 50.0,
                        ),
                      ],
                    ),
                  ),
               ),
                percent: 0.217,
                //percent: _convert,
                footer: new Text(
                  "Steps Taken:  $_steps",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.purple),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Colors.purpleAccent,
              ),
            ),



                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Center(
                    child: Row(
                      children: <Widget>[
                       Text(
                        'Walked:- \n\n$_km Km',
                        style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),
                      ),
                        VerticalDivider(
                          thickness: 0,
                          width: 20,
                        ),
                        Text(
                          'calories:- \n\n$_calories Kcal',
                          style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold ),
                        ),
                      ]
                    ),
                  ),
                ),


                Divider(
                  height: 20,
                  thickness: 0,
                  color: Colors.white,
                ),
                Text(
                  'Pedestrian status:',
                  style: TextStyle(fontSize: 30),
                ),
                Icon(
                  _status == 'walking'
                      ? Icons.directions_walk
                      : _status == 'stopped'
                      ? Icons.accessibility_new
                      : Icons.error,
                  size: 100,
                  color: kPrimaryColor,
                ),
                Center(
                  child: Text(
                    _status,
                    style: _status == 'walking' || _status == 'stopped'
                        ? TextStyle(fontSize: 30)
                        : TextStyle(fontSize: 20, color: Colors.red),
                  ),
                ),
                Text(
                  ' $fault ',
                  style: TextStyle(fontSize: 30),
                ),
                ElevatedButton(onPressed: (){
                  reset();
                }, child: Text('Reset'),
                  style: ElevatedButton.styleFrom(
                      primary: kPrimaryColor,


                ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
