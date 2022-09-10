import 'package:flutter/material.dart';
import 'package:flutter_application_sample/constants.dart';

class LockScreenTile extends StatelessWidget {

  final String upperTile;
  final String titlevar;
  
  const LockScreenTile({
    Key? key, required this.upperTile, required this.titlevar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column
    (children: [
      Column(
        children: [
          Text(
           upperTile,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.normal,
              color: lightTextColor,
              
            ),
          ),
          Text(titlevar,
          style: TextStyle(
          fontSize: 48.0,
          fontWeight: FontWeight.w900,
          color: mainTextColor,

          ),
          )
        ],
      )
    ]);
  }
}