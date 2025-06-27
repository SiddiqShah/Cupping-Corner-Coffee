import 'package:flutter/material.dart';

class SaleContainer extends StatelessWidget {
  const SaleContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: Image.asset(
                'images/home.png', // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),

            // Sale% text in top-left corner
            Positioned(
              width: 75,
              height: 25,
              top: 8,
              left: 23,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Color(0xff2F201C),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: const Text(
                    'Sale%',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            // Main offer text
            Positioned(
              left: 32,
              bottom: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Buy One Get\nOne Free',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
