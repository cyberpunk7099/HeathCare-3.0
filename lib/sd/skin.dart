import 'dart:io';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/symptom/info.dart';
import 'package:image/image.dart' as img;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_auth/sd//classifier.dart';
import 'package:flutter_auth/sd//classifier_float.dart';
import 'package:logger/logger.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';

import '../BottomNavigation.dart';

class Skin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Skin Infection Analyser'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Classifier _classifier;

  var logger = Logger();

  File? _image;
  final picker = ImagePicker();

  Image? _imageWidget;

  img.Image? fox;

  Category? category;

  @override
  void initState() {
    super.initState();
    _classifier = ClassifierFloat();
  }

  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedFile!.path);
      _imageWidget = Image.file(_image!);

      _predict();
    });
  }

  void _predict() async {
    img.Image imageInput = img.decodeImage(_image!.readAsBytesSync())!;
    var pred = _classifier.predict(imageInput);

    setState(() {
      this.category = pred;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavigation()));
            }),
        title: Text('Skin Infection Analyser',
            style: TextStyle(color: Colors.white)),
        backgroundColor: kPrimaryColor,
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: _image == null
                ? Text('No image selected.')
                : Container(
                    constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height / 2),
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: _imageWidget,
                  ),
          ),
          SizedBox(
            height: 36,
          ),
          GestureDetector(
            child: Text(
              category != null ? category!.label : '',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.blueAccent),
            ),
            onTap: () {
              if (category!.label == "acne") {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Info23()));
              }
              else if(category!.label == "cold sore") {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Info24()));
              }
            },
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            category != null ? 'Confidence: ${(category!.score * 100.0).toStringAsFixed(2)}%' : '',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        backgroundColor: kPrimaryColor,
        tooltip: 'Pick Image',
        child: Icon(
          Icons.add_a_photo,
          color: Colors.white,
        ),
      ),
    );
  }
}
