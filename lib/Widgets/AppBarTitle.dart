import 'package:flutter/material.dart';

class AppBarTitleW extends StatelessWidget {
  final String textinside;
  final double size;
  AppBarTitleW(this.textinside, this.size);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        // textAlign: TextAlign.center,
        textinside,
        style: TextStyle(fontSize: size, fontWeight: FontWeight.w900),
      ),
    );
  }
}


// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }