import 'package:flutter/material.dart';
import 'package:flutter_application_sample/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class CarComponents extends StatelessWidget {
  final String carspeed;

  const CarComponents({
    Key? key,
    required this.carspeed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 35.0,
          top: 35.0,
          child: Align(
            alignment: Alignment.topRight,
            child: Text(
              "km",
              style: TextStyle(
                color: mainTextColor,
                fontWeight: FontWeight.normal,
                fontSize: 24.0,
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              carspeed,
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                color: mainTextColor,
                fontSize: 133.0,
                fontWeight: FontWeight.w200,
              )),
            ),
          ),
        ),
        Positioned(
            top: 60.0,
            bottom: 0.0,
            width: MediaQuery.of(context).size.width * 2.0,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets\images\car.jpg"))),
            ))
      ],
    );
  }
}
