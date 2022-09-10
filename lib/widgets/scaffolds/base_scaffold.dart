import 'package:flutter/material.dart';
import 'package:flutter_application_sample/constants.dart';

class BaseScaffoldhmm extends StatelessWidget {
  final Widget bodyvar;
  List<Widget> appBarContent;

  BaseScaffoldhmm(
      {Key? key, required this.bodyvar, required this.appBarContent})
      : super(key: key) {
    if (this.appBarContent == null) {
      this.appBarContent = [];
    }
  }

  @override
  Widget build(BuildContext context) {
    final Color transparent = Colors.transparent;

    return Scaffold(
      backgroundColor: transparent,
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: conBackgroundColor,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
            child: Stack(
          // overflow: Overflow.visible,
          clipBehavior: Clip.none,

          children: [
            this.appBarContent.length > 0
                ? Positioned(
                    top: -10.0,
                    left: -15.0,
                    right: -15.0,
                    height: 90.0,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: this.appBarContent))
                : Container(),
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 0.0,
              top: this.appBarContent.length > 0 ? 60.0 : 0.0,
              child: bodyvar,
            )
          ],
        )),
      ),
    );
  }
}