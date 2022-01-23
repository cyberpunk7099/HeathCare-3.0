import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  get width => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: size.width * 0.2,
            ),
          ),
          Positioned(
            top: 160,
            right: 50,
            child: Image.asset(
              "assets/icons/injection.png",
              width: size.width * 0.18,
            ),
          ),
          Positioned(
            top: 200,
            left: 10,
            child: Image.asset(
              "assets/icons/medicine.png",
              width: size.width * 0.18,
            ),
          ),
          Positioned(
            bottom: 280,
            right: 140,
            child: Image.asset(
              "assets/icons/medical-history.png",
              width: size.width * 0.18,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
