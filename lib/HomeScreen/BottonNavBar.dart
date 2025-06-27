import 'package:flutter/material.dart';

class Bottonnavbar extends StatelessWidget {
  const Bottonnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 30),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, -4),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('images/homebtn.png'),
          Icon(Icons.favorite, color: const Color.fromARGB(255, 207, 207, 207)),
          Icon(
            Icons.shopping_bag_outlined,
            color: const Color.fromARGB(255, 207, 207, 207),
          ),
          Icon(
            Icons.notifications,
            color: const Color.fromARGB(255, 207, 207, 207),
          ),
        ],
      ),
    );
  }
}
