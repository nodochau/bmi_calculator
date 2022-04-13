// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'card.dart';
import 'icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color.fromARGB(255, 37, 190, 178);
const activeColor = Color.fromARGB(255, 2, 35, 51);
const inactiveColor = Color.fromARGB(169, 42, 35, 65);
enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  // ignore: non_constant_identifier_names
  // void UpdateCardColor(Gender selectedGender) {
  //   //Using ternary operator instead of using if else
  //   selectedGender == Gender.male
  //       ? {
  //           maleCardColor == inactiveColor
  //               ? {maleCardColor = activeColor, femaleCardColor = inactiveColor}
  //               : maleCardColor = inactiveColor
  //         }
  //       : {
  //           femaleCardColor == inactiveColor
  //               ? {femaleCardColor = activeColor, maleCardColor = inactiveColor}
  //               : femaleCardColor = inactiveColor
  //         };

  //   // if (selectedGender == Gender.male) {
  //   //   if (maleCardColor == inactiveColor) {
  //   //     maleCardColor = activeColor;
  //   //     femaleCardColor = inactiveColor;
  //   //   } else {
  //   //     maleCardColor = inactiveColor;
  //   //   }
  //   // } else {
  //   //   if (femaleCardColor == inactiveColor) {
  //   //     femaleCardColor = activeColor;
  //   //     maleCardColor = inactiveColor;
  //   //   } else {
  //   //     femaleCardColor = inactiveColor;
  //   //   }
  //   // }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'BMI CALCULATOR',
              style: TextStyle(color: Color.fromARGB(255, 186, 197, 233)),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: ReusableCard(
                    colour: selectedGender == Gender.male
                        ? activeColor
                        : inactiveColor,
                    cardWidget: cardContent(
                      theIcon: FontAwesomeIcons.mars,
                      theText: 'MALE',
                    ),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: ReusableCard(
                      colour: selectedGender == Gender.female
                          ? activeColor
                          : inactiveColor,
                      cardWidget: cardContent(
                          theIcon: FontAwesomeIcons.venus, theText: 'FEMALE')),
                )),
              ],
            )),
            Expanded(
                child: ReusableCard(
              colour: activeColor,
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    FontAwesomeIcons.mars,
                    size: 80.0,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'MALE',
                    style: TextStyle(color: Colors.blue, fontSize: 18.0),
                  ),
                ],
              ),
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  colour: activeColor,
                  cardWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 80.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'MALE',
                        style: TextStyle(color: Colors.blue, fontSize: 18.0),
                      ),
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  colour: activeColor,
                  cardWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 80.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'MALE',
                        style: TextStyle(color: Colors.blue, fontSize: 18.0),
                      ),
                    ],
                  ),
                )),
              ],
            )),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
              child: Center(
                child: Text('CALCULATE BMI'),
              ),
            ),
          ],
        ));
  }
}
