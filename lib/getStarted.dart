import 'package:cupping_corner_coffee/HomeScreen/homeScreen.dart';
import 'package:flutter/material.dart';

class Getstarted extends StatefulWidget {
  const Getstarted({super.key});

  @override
  State<Getstarted> createState() => _GetstartedState();
}

class _GetstartedState extends State<Getstarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD7A86E),
      body: Column(
        children: [
          Image.asset(
            'images/coffe.png',
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.55,
            fit: BoxFit.cover,
          ),

          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Discover the best coffee',
                    style: TextStyle(
                      color: Color(0xff3E2723),
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PlayfairDisplay',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Coffee lovers who value\nconvenience and personalization',
                    style: TextStyle(
                      color: Color(0xff3E2723),
                      fontSize: 16,
                      fontFamily: 'PlayfairDisplay',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Homescreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color(0xffBF6C38),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
