import 'package:BMICalculator/results_page.dart';
import 'package:flutter/material.dart';
import 'consts/consts.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart'; -> Not working properly
import 'reusableCard.dart';
import 'icon_content.dart';
import 'Widgets/roundButtons.dart';
import 'Widgets/AppBarTitle.dart';
import 'package:BMICalculator/Widgets/Button_Title.dart';
import 'CalculatorBrain.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //Variables (changed throughout the process)
  Gender selectedGender = Gender.male;
  int height = 180;
  int weight = 60;
  int age = 18;

  // Color maleCardColor = InactiveCardColor;
  // Color femaleCardColor = InactiveCardColor;

  // void updateColor(Gender selectedGender) {
  //   // Male Card pressed
  //   if (selectedGender == Gender.male) {
  //     if (maleCardColor == InactiveCardColor) {
  //       maleCardColor = CardColor;
  //       femaleCardColor = InactiveCardColor;
  //     } else {
  //       maleCardColor = InactiveCardColor;
  //     }
  //   }

  //   if (selectedGender == Gender.female) {
  //     if (femaleCardColor == InactiveCardColor) {
  //       femaleCardColor = CardColor;
  //       maleCardColor = InactiveCardColor;
  //     } else {
  //       femaleCardColor = InactiveCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // Page main structure
    return Scaffold(
      appBar: AppBar(elevation: 1, title: AppBarTitleW('BMI CALULATOR', 25)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // The 1st 2 widgets : Gender select buttons
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour:
                        selectedGender == Gender.male
                            ? kCardColor
                            : kInactiveCardColor,
                    Cardchild: IconContent(Icons.male, "MALE"),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour:
                        selectedGender == Gender.female
                            ? kCardColor
                            : kInactiveCardColor,
                    Cardchild: IconContent(Icons.female, "FEMALE"),
                  ),
                ),
              ],
            ),
          ),

          // The 2nd Row Widget : The Height slider
          Expanded(
            child: ReusableCard(
              colour: kCardColor,
              Cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("HEIGHT", style: kLabelTextStyle),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: kNumStyle),
                      Text("cm", style: kLabelTextStyle),
                    ],
                  ),
                  //  The "Slider" ()
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      overlayColor: kOverlayLightColor,
                      thumbColor: kBottomContainerColor,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          // print(newValue); fpr testing purposes (debug variation observation)
                          height = newValue.round();
                        });
                      },
                      min: 120.0,
                      max: 220.0,
                      // activeColor: Colors.white,
                      inactiveColor: Color(0xFF8D8E98),
                    ),
                  ),
                ],
              ),
              onPress: () {},
            ),
          ),

          // The 3rd Row Widgets
          Expanded(
            child: Row(
              children: [
                // Weight Selection Widget :
                Expanded(
                  child: ReusableCard(
                    colour: kCardColor,
                    Cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("WEIGHT", style: kLabelTextStyle),
                        Text(weight.toString(), style: kNumStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // We want to buttons on the same line (+ and -)
                          //=>To do So, we embed the 2 buttons on the same ROW Wwidget :
                          children: [
                            RoundIconButton(
                              icon: Icons.remove,
                              WhenPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            RoundIconButton(
                              icon: Icons.add,
                              WhenPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    onPress: null,
                  ),
                ),

                // Age selection Widget :
                Expanded(
                  child: ReusableCard(
                    colour: kCardColor,
                    Cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("AGE", style: kLabelTextStyle),
                        Text(age.toString(), style: kNumStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // We want to buttons on the same line (+ and -)
                          //=>To do So, we embed the 2 buttons on the same ROW Wwidget :
                          children: [
                            RoundIconButton(
                              icon: Icons.remove,
                              WhenPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            RoundIconButton(
                              icon: Icons.add,
                              WhenPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    onPress: null,
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onTap: () {
              Calculatorbrain calc = Calculatorbrain(
                height: height,
                weight: weight,
              );
              calc.calculateBMI();
              String Res = calc.calculateBMI();
              String ResText = calc.getResult();
              String Inter = calc.getInterpretation();

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => ResultsPage(
                        bmiResult: Res,
                        interpretation: Inter,
                        resultText: ResText,
                      ),
                ),
              );
            },
            buttonTitle: 'CALCULATE RESULTS',
          ),
        ],
      ),
    );
  }
}
