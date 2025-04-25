import 'package:flutter/material.dart';
import 'consts/consts.dart';

// Resusable Icon content Widget
class IconContent extends StatelessWidget {
  IconContent(this.icon, this.iconText);

  final IconData icon;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 100.0),
        SizedBox(height: 30),
        Text(iconText, style: kLabelTextStyle),
      ],
    );
  }
}
