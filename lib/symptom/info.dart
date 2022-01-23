import 'package:flutter/material.dart';
import 'package:flutter_auth/BottomNavigation.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Welcome/components/body.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/home.dart';
import 'package:flutter_auth/symptom/question.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_auth/symptom/question.dart';
import 'package:cached_network_image/cached_network_image.dart';



class Info1 extends StatefulWidget {
  @override
  State<Info1> createState() => _Info1State();
}

class _Info1State extends State<Info1> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/Harnia.jpg?alt=media&token=85fb6362-72ed-45c0-ba23-72b9706335c7";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavigation()));
    }),
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('Hernia', style: TextStyle(fontSize: 30)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

          CachedNetworkImage(
            imageUrl: url,
            placeholder: (context,url) => Center(child: CircularProgressIndicator()),
            errorWidget: (context,url,error) => new Icon(Icons.error),
          ),

            ],
          ),
        ),
      );

  }

}

class Info2 extends StatefulWidget {
  @override
  State<Info2> createState() => _Info2State();
}

class _Info2State extends State<Info2> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/Ulcer.png?alt=media&token=2ad8c823-79a1-4b29-b0f4-3cebc72f8ee8";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('Ulcers', style: TextStyle(fontSize: 30)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              CachedNetworkImage(
                imageUrl: url,
                placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),

            ],
          ),
        ),
      ),
    );
  }

}

class Info3 extends StatefulWidget {
  @override
  State<Info3> createState() => _Info3State();
}

class _Info3State extends State<Info3> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/Gallstones.png?alt=media&token=e698fd35-8541-41e8-9d0e-57b6a81ea3c2";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('Gallstones', style: TextStyle(fontSize: 30)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              CachedNetworkImage(
                imageUrl: url,
                placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),

            ],
          ),
        ),
      ),
    );
  }

}

class Info4 extends StatefulWidget {
  @override
  State<Info4> createState() => _Info4State();
}

class _Info4State extends State<Info4> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/IBS.png?alt=media&token=b23b94a6-3b65-40f4-8fe3-2025c7ab19be";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('Irritable Bowel Syndrome', style: TextStyle(fontSize: 30)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              CachedNetworkImage(
                imageUrl: url,
                placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),

            ],
          ),
        ),
      ),
    );
  }

}

class Info5 extends StatefulWidget {
  @override
  State<Info5> createState() => _Info5State();
}

class _Info5State extends State<Info5> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/IBD.PNG?alt=media&token=6bc09278-b06c-4191-9ef7-41bad3a7d31b";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('Inflammatory Bowel Disease', style: TextStyle(fontSize: 30)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              CachedNetworkImage(
                imageUrl: url,
                placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),

            ],
          ),
        ),
      ),
    );
  }

}

class Info6 extends StatefulWidget {
  @override
  State<Info6> createState() => _Info6State();
}

class _Info6State extends State<Info6> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/Diverticular_Disease.PNG?alt=media&token=7ad58376-756a-4c26-a677-121e8efb882a";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('Diverticular Disease', style: TextStyle(fontSize: 30)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              CachedNetworkImage(
                imageUrl: url,
                placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),

            ],
          ),
        ),
      ),
    );
  }

}

class Info7 extends StatefulWidget {
  @override
  State<Info7> createState() => _Info7State();
}

class _Info7State extends State<Info7> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/Hemorrhoids.PNG?alt=media&token=9a338a98-c0e1-4069-8d95-6bd07c921665";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('Hemorrhoids', style: TextStyle(fontSize: 30)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              CachedNetworkImage(
                imageUrl: url,
                placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),

            ],
          ),
        ),
      ),
    );
  }

}

class Info8 extends StatefulWidget {
  @override
  State<Info8> createState() => _Info8State();
}

class _Info8State extends State<Info8> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/Constipation.PNG?alt=media&token=4a9eb63a-b1bc-4a23-9e59-7e7eeaa87594";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('Constipation', style: TextStyle(fontSize: 30)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              CachedNetworkImage(
                imageUrl: url,
                placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),
              CachedNetworkImage(
                  imageUrl: 'https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/Constipation%20-%20Copy.PNG?alt=media&token=9656146e-be03-4557-b51e-e701f8063ccb',
                //  placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                  errorWidget: (context,url,error) => new Icon(Icons.error),
                ),


            ],
          ),
        ),
      ),
    );
  }

}

class Info9 extends StatefulWidget {
  @override
  State<Info9> createState() => _Info9State();
}

class _Info9State extends State<Info9> {
 String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/Cancer.PNG?alt=media&token=1cd8b83b-d735-4fe9-94e2-5c7bd39ae535";
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('Cancer', style: TextStyle(fontSize: 30)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [









              CachedNetworkImage(
                  imageUrl: url,

                  placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                  errorWidget: (context,url,error) => new Icon(Icons.error),
                ),
              CachedNetworkImage(
                imageUrl: 'https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/Cancer%20-%20Copy.PNG?alt=media&token=d7661bba-ae7a-4892-a557-e2b8cfb24142',

                //placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),







            ],
          ),
        ),
      );

  }

}

class Info10 extends StatefulWidget {
  @override
  State<Info10> createState() => _Info10State();
}

class _Info10State extends State<Info10> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/Hepatitis_C.PNG?alt=media&token=7cb98450-1be5-4cfc-bacd-6da91e405cbb";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('Hepatitis', style: TextStyle(fontSize: 30)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              CachedNetworkImage(
                imageUrl: url,
                placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),

            ],
          ),
        ),
      ),
    );
  }

}

class Info11 extends StatefulWidget {
  @override
  State<Info11> createState() => _Info11State();
}

class _Info11State extends State<Info11> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/Mononucleosis.PNG?alt=media&token=8007bc95-4f2f-413e-8415-4d947137848c";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('Mononucleosis ', style: TextStyle(fontSize: 30)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              CachedNetworkImage(
                imageUrl: url,
                placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),

            ],
          ),
        ),
      ),
    );
  }

}

class Info12 extends StatefulWidget {
  @override
  State<Info12> createState() => _Info12State();
}

class _Info12State extends State<Info12> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/Lactose_Intolerance.PNG?alt=media&token=08b31e0d-6d30-42e1-b277-aa6fef70b054";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('Lactose Intolerance', style: TextStyle(fontSize: 25)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              CachedNetworkImage(
                imageUrl: url,
                placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),

            ],
          ),
        ),
      ),
    );
  }

}

class Info13 extends StatefulWidget {
  @override
  State<Info13> createState() => _Info13State();
}

class _Info13State extends State<Info13> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/stomach%20short%2FBleeding%20during%20pregrency.PNG?alt=media&token=f5bc1354-1194-4c49-b835-1acd5063d12b";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('Miscarriage', style: TextStyle(fontSize: 25)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              CachedNetworkImage(
                imageUrl: url,
                placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),

            ],
          ),
        ),
      ),
    );
  }

}


class Info14 extends StatefulWidget {
  @override
  State<Info14> createState() => _Info14State();
}

class _Info14State extends State<Info14> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/stomach%20short%2FAppendictis.PNG?alt=media&token=a34b9aac-b4dc-433f-b04e-96de37d1c68c";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('Appendicitis', style: TextStyle(fontSize: 25)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              CachedNetworkImage(
                imageUrl: url,
                placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),

            ],
          ),
        ),
      ),
    );
  }

}

class Info15 extends StatefulWidget {
  @override
  State<Info15> createState() => _Info15State();
}

class _Info15State extends State<Info15> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/stomach%20short%2FKidneyInfection.PNG?alt=media&token=275d8563-c067-4b7f-aa15-5e59446819a0";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('Kidney Infection', style: TextStyle(fontSize: 25)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              CachedNetworkImage(
                imageUrl: url,
                placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),

            ],
          ),
        ),
      ),
    );
  }

}

class Info16 extends StatefulWidget {
  @override
  State<Info16> createState() => _Info16State();
}

class _Info16State extends State<Info16> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/stomach%20short%2FGastroentis.PNG?alt=media&token=05bf0b57-ee07-404c-aadb-ab32f3f9a64a";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text(' GASTROENTERITIS', style: TextStyle(fontSize: 25)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              CachedNetworkImage(
                imageUrl: url,
                placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),

            ],
          ),
        ),
      ),
    );
  }

}

class Info17 extends StatefulWidget {
  @override
  State<Info17> createState() => _Info17State();
}

class _Info17State extends State<Info17> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/stomach%20short%2FAnal%20fissure.PNG?alt=media&token=5dcb597a-686b-4729-aeed-26021fc871ad";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('Anal fissure', style: TextStyle(fontSize: 25)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              CachedNetworkImage(
                imageUrl: url,
                placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),

            ],
          ),
        ),
      ),
    );
  }

}

class Info18 extends StatefulWidget {
  @override
  State<Info18> createState() => _Info18State();
}

class _Info18State extends State<Info18> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/Cold%20and%20flu%2FStrepThroat.PNG?alt=media&token=24047d8d-6d06-4875-bfc7-60cca6d2662a";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('strep Throat', style: TextStyle(fontSize: 25)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              CachedNetworkImage(
                imageUrl: url,
                placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),

            ],
          ),
        ),
      ),
    );
  }

}

class Info19 extends StatefulWidget {
  @override
  State<Info19> createState() => _Info19State();
}

class _Info19State extends State<Info19> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/Cold%20and%20flu%2FAcute.PNG?alt=media&token=5c65d180-62af-48a5-af49-6b53a33392eb";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('ACUTE BRONCHITIS', style: TextStyle(fontSize: 25)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              CachedNetworkImage(
                imageUrl: url,
                placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),

            ],
          ),
        ),
      ),
    );
  }

}

class Info20 extends StatefulWidget {
  @override
  State<Info20> createState() => _Info20State();
}

class _Info20State extends State<Info20> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/Cold%20and%20flu%2FCold%20and%20flu.PNG?alt=media&token=e6e9be5c-adc1-43b9-a0af-52ebd93129d0";
 String urll ="https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/Cold%20and%20flu%2FCold%20and%20flu%20-%20Copy.PNG?alt=media&token=97205b66-bb08-44da-9979-edf45e4a2f0c";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('Cold And Flu', style: TextStyle(fontSize: 25)),
        ),
        body: SingleChildScrollView(

          child: Column(
            children: [

              CachedNetworkImage(
                imageUrl: url,

                placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),
              CachedNetworkImage(
                imageUrl: urll,

                //placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),

            ],
          ),

        ),
      ),
    );
  }

}

class Info21 extends StatefulWidget {
  @override
  State<Info21> createState() => _Info21State();
}

class _Info21State extends State<Info21> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/Cold%20and%20flu%2Fsinusitis.PNG?alt=media&token=5e1286ad-1859-4349-bbc4-037cb6b8eb9d";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('Sinusitis', style: TextStyle(fontSize: 25)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              CachedNetworkImage(
                imageUrl: url,
                placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),

            ],
          ),
        ),
      ),
    );
  }

}

class Info22 extends StatefulWidget {
  @override
  State<Info22> createState() => _Info22State();
}

class _Info22State extends State<Info22> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/Lactose_Intolerance.PNG?alt=media&token=08b31e0d-6d30-42e1-b277-aa6fef70b054";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('Lactose Intolerance', style: TextStyle(fontSize: 25)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              CachedNetworkImage(
                imageUrl: url,
                placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),

            ],
          ),
        ),
      ),
    );
  }

}




class Info23 extends StatefulWidget {
  @override
  State<Info23> createState() => _Info23State();
}

class _Info23State extends State<Info23> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/Skin%2Facne.PNG?alt=media&token=9c4c7c85-81cb-4401-aec0-9b21308be5d0";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('Acne', style: TextStyle(fontSize: 25)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              CachedNetworkImage(
                imageUrl: url,
                placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),

            ],
          ),
        ),
      ),
    );
  }

}

class Info24 extends StatefulWidget {
  @override
  State<Info24> createState() => _Info24State();
}

class _Info24State extends State<Info24> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/Skin%2Fcold%20sore.PNG?alt=media&token=1cf3879f-7b1c-4939-894b-3095b6186db2";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('Cold Sore', style: TextStyle(fontSize: 25)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              CachedNetworkImage(
                imageUrl: url,
                placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),

            ],
          ),
        ),
      ),
    );
  }

}

class Info25 extends StatefulWidget {
  @override
  State<Info25> createState() => _Info25State();
}

class _Info25State extends State<Info25> {
  String url = "https://firebasestorage.googleapis.com/v0/b/heathcare-b18ce.appspot.com/o/Skin%2Feczema.PNG?alt=media&token=0dc6d7d8-5c53-4af9-8639-7904015a279c";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          title: Text('Eczema', style: TextStyle(fontSize: 25)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              CachedNetworkImage(
                imageUrl: url,
                placeholder: (context,url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error) => new Icon(Icons.error),
              ),

            ],
          ),
        ),
      ),
    );
  }

}






