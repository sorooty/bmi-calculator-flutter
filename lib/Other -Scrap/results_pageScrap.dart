// import 'package:BMICalculator/Widgets/AppBarTitle.dart';
// import 'package:BMICalculator/consts/consts.dart';
// import 'package:BMICalculator/input_page.dart';
// import 'package:BMICalculator/reusableCard.dart';
// import 'package:flutter/material.dart';

// class ResultsPage extends StatelessWidget {
//   const ResultsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double result = 26.7;

//     return Scaffold(
//       appBar: AppBar(title: AppBarTitleW('BMI CALCULATOR', 25)),
//       body: Column(
//         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Flexible(
//             flex: 1,
//             // fit:
//             child: Container(
//               margin: EdgeInsets.all(8),
//               child: Text("Your Results", style: kLargebuttStyle),
//             ),
//           ),
//           // SizedBox(height: 10),
//           Expanded(
//             flex: 2,
//             child: ReusableCard(
//               colour: kCardColor,
//               Cardchild: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     child: Text(
//                       "OVERWEIGHT",
//                       style: TextStyle(
//                         color: const Color.fromARGB(255, 113, 233, 119),
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                       ),
//                     ),
//                   ),
//                   Expanded(child: Text(result.toString(), style: kNumStyle)),
//                 ],
//               ),
//               onPress: null,
//             ),
//           ),
//           // SizedBox(height: 6),
//           GestureDetector(
//             onTap:
//                 () => Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) {
//                       return InputPage();
//                     },
//                   ),
//                 ),
//             child: Container(
//               color: kBottomContainerColor,
//               margin: EdgeInsets.only(top: 30),
//               width: kBottomNavigationBarHeight,
//               height: 80,
//               child: AppBarTitleW('RE-CALCULATE RESULTS', 30),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
