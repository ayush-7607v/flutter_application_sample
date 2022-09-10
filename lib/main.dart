import 'package:flutter/material.dart';
import 'package:flutter_application_sample/screens/lock_screen/lock_screen_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyTapp());
}

class MyTapp extends StatelessWidget {
  const MyTapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tesla",
      home: LockScreen(),
       theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(
           Theme.of(context).textTheme,
        )
       ) ,
    );
  }
}



// The Dart language now supports sound null safety!
// When you opt into null safety, types in your code are non-nullable by default,
//  meaning that variables can’t contain null unless you say they can. With null safety,
//   your runtime null-dereference errors turn into edit-time analysis errors.
//   A Dart program can contain some libraries that are null safe and some that aren’t. 
//   These mixed-version programs execute with unsound null safety.
