import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
            primary: const Color.fromARGB(169, 41, 33, 65),
            secondary: const Color.fromARGB(255, 66, 35, 71)),
        scaffoldBackgroundColor: const Color.fromARGB(169, 41, 33, 65),
        textTheme: const TextTheme(
            bodyText2: TextStyle(color: Color.fromARGB(255, 186, 197, 233))),
      ),
      home: const InputPage(),
    );
  }
}
