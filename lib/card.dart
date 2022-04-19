import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // ignore: prefer_const_constructors
  final Color colour;
  final Widget cardWidget;
  final VoidCallback onPress;
  ReusableCard(
      {Key? key,
      required this.colour,
      required this.cardWidget,
      required this.onPress})
      : super(key: key) {
    // ignore: prefer_initializing_formals
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        // Gesturedetector has the same function with button
        onTap: onPress,
        child: Container(
          child: cardWidget,
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: colour, borderRadius: BorderRadius.circular(10.0)),
        ));
  }
}
