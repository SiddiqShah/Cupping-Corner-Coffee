import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cupping_corner_coffee/getStarted.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Getstarted()),
      );
    });
  }

  @override // <--- added override for clarity
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4E342E),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('images/logo.png', width: 200),
            const SizedBox(height: 4), // tiny spacing
            const Text(
              'Coffee Beans',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: 'PlayfairDisplay',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
