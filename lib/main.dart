import 'package:cupping_corner_coffee/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CuppingCornerCoffee());
}

class CuppingCornerCoffee extends StatelessWidget {
  const CuppingCornerCoffee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Splashscreen());
  }
}
