import 'package:flutter/material.dart';
import 'package:BMICalculator/consts/consts.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart'; -> Not working properly

// We creating our own button widget from scratch (the round + or - buttons icon) using "RawMaterialButton" widget (a base button structure for multiple buttons)
// ignore: must_be_immutable
class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.WhenPressed});
  final IconData icon;
  VoidCallback WhenPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon, weight: 30),
      elevation: 6,
      splashColor: kBottomContainerColor,
      onPressed: WhenPressed,
      onLongPress: WhenPressed,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: kButtonColor,
    );
  }
}
