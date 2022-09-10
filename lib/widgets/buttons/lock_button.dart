import 'package:flutter/material.dart';

class LockButton extends StatelessWidget {
  final Widget childd;

  // final Function onTap;
  // A Function can be anything, like Function(), Function(int), etc, which is why with Dart null safety, 
  // you should explicitly tell what that Function
// Dart 2.12 (Null safety):
// Instead of
// final Function? onPressed; // Bad
// use
// final void Function()? onPressed; // Good
// final VoidCallback? onPressed; // Good

  final void Function()? onTap;
  
  const LockButton({
    Key? key,
    required this.childd,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125.0,
      width: 125.0,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets\images\lock_button.png"),
        fit: BoxFit.cover,
      )),
      child: InkWell(
        onTap: onTap,
        child: Align(
          alignment: Alignment.center,
          child: this.childd,
        ),
      ),
    );
  }
}
