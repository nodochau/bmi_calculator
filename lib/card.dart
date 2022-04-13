import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // ignore: prefer_const_constructors
  final Color colour;
  final Widget cardWidget;
  ReusableCard({Key? key, required this.colour, required this.cardWidget})
      : super(key: key) {
    // ignore: prefer_initializing_formals
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardWidget,
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
