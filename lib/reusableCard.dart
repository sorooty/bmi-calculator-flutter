import 'package:flutter/material.dart';

// My own reusable widget (refractor -> Extract widget -> name the new perso widget -> Tada !)

class ReusableCard extends StatelessWidget {
  // Constructor + attribute/parameter linked to the constructor :
  ReusableCard({
    @required required this.colour,
    required this.Cardchild,
    required this.onPress,
  });
  final Color colour;
  final Widget Cardchild;
  // a new variable which is a function to be passed
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Cardchild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
        // color: Color(0xFF1D1E33), if we have a box decoration for a container, the color proprety of the container should be placed inside the box decoration instead.
      ),
    );
  }
}
