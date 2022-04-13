import 'package:flutter/material.dart';

class cardContent extends StatelessWidget {
  final IconData theIcon;
  final String theText;
  const cardContent({Key? key, required this.theIcon, required this.theText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          theIcon,
          color: Colors.white,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          theText,
          style: const TextStyle(color: Colors.blue, fontSize: 18.0),
        ),
      ],
    );
  }
}
