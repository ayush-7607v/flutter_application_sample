import 'package:flutter/material.dart';

class NavButton extends StatefulWidget {
  final Widget? childss;
  final Function(bool)? onTab;
  final double? width;
  final double? height;
  bool? isOn;

  NavButton({
    Key? key,
    this.childss,
    this.onTab,
    this.width,
    this.height,
    this.isOn,
  }) : super(key: key);

  @override
  State<NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  bool isOn = false;

  @override
  void initState() {
    // ye kewal pehle baar run hota hai jab app start hota phir override ho jata

    this.isOn != this.widget.isOn ? this.widget.isOn : false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height != null ? widget.height : 130.0,
      width: widget.width != null ? widget.width : 130.0,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets\images\buttonon.png"),
          // buttonon
          //  (isOn
          //     ? Image.asset("assets\images\button_on.png").image
          //     : Image.asset("assets\images\nav_button.png").image),
          fit: BoxFit.cover,
        ),
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            isOn = !isOn;
          });
          if (this.widget.onTab != null) this.widget.onTab!(isOn);
        },
// InkWell is the material widget in flutter. It responds to the touch action as performed by the user.
// Inkwell will respond when the user clicks the button.
        child: Align(
          alignment: Alignment.center,
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
                isOn ? Colors.white : Colors.grey.withOpacity(0.8),
                BlendMode.modulate),
            child: widget.childss,
          ),
        ),
      ),
    );
  }
}