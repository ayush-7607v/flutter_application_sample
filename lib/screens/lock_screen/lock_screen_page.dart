// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_sample/constants.dart';
import 'package:flutter_application_sample/screens/home_screens/HomeScreen.dart';
import 'package:flutter_application_sample/screens/lock_screen/components/car_component.dart';
import 'package:flutter_application_sample/widgets/buttons/lock_button.dart';
import 'package:flutter_application_sample/widgets/buttons/nav_button.dart';
import 'package:flutter_application_sample/widgets/scaffolds/base_scaffold.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/title.dart';

class LockScreen extends StatelessWidget {
  LockScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffoldhmm(
      // String vars = "vghb"; cant define string here whyyyyy?
      appBarContent: [
        NavButton(
          width: 100.0,
          height: 100.0,
          childss: Container(
            width: 17.0,
            height: 17.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets\images\settingicon.png"),
              ),
            ),
          ),
        ),
      ],

      bodyvar: Column(
        children: [
          const LockScreenTile(
            upperTile: "Tesla",
            titlevar: "Cybertruck",
          ),
          Expanded(
              child: CarComponents(
            carspeed: "297",
          )),
          Text(
            "A/C is turned on",
            style: TextStyle(
              color: lightTextColor,
              fontSize: 20.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          LockButton(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: ((context) => Homescreen()),
                ),
              );
            },
            childd: Image.asset(
              "assets\images\page_one_lock.jpeg",
              width: 60.0,
              height: 60.0,
            ),
          ),
          Text(
            "Tap to open the car",
            style: TextStyle(
              color: mainTextColor,
              fontSize: 16.0,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 20.0,),
        ],
      ),
    );
  }
}





// The biggest cost associated with clip at that time is that Flutter used to add a saveLayer after each clip
// A saveLayer is especially expensive in older devices because it creates an offscreen render target, and a render target switch can sometimes cost about 1ms.
// Even without a saveLayer, a clip is still expensive because it applies to all subsequent draws until it’s restored.
// Thus a single clip may slow down the performance on hundreds of draw operations.

// We propose to introduce a Clip enum and add a clipBehavior configuration of that enum type to all widgets that can clip.
//  For most widgets, that clipBehavior is default to Clip.none and thus no clip is provided.
//  For widgets that need to default to clip a rectangle, we’ll set the default clipBehavior to Clip.hardEdge to avoid anti-aliasing cost.
//  For other widgets that default to clip (e.g., ClipRRect), we’ll set the default clipBehavior to Clip.antiAlias. Flutter’s old default behavior
//  Clip.antiAliasWithSaveLayer is not going to be the default clipBehavior for any widget anymore.

// use print statement to debug which class is running first
