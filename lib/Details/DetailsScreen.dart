// Details/DetailsScreen.dart (Updated)
import 'package:cupping_corner_coffee/Details/NavBar.dart';
import 'package:cupping_corner_coffee/Details/description.dart';
import 'package:cupping_corner_coffee/models/Models.dart';
import 'package:flutter/material.dart';

class Detailsscreen extends StatefulWidget {
  final Coffee coffee;

  const Detailsscreen({super.key, required this.coffee});

  @override
  State<Detailsscreen> createState() => _DetailsscreenState();
}

class _DetailsscreenState extends State<Detailsscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffBF6C38),
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ),
                const SizedBox(width: 105),
                const Text(
                  'Details',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Image.asset(
            widget.coffee.image,
            height: 200,
            width: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.coffee.name,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    widget.coffee.subtitle,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 147, 147, 147),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 255, 234, 43),
                        size: 15,
                      ),
                      Text(
                        ' ${widget.coffee.rating}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        ' (${widget.coffee.reviews})',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 147, 147, 147),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Color(0xffBF6C38),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset(
                            "images/NaturalFood.png",
                            width: 30,
                            height: 30,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Color(0xffBF6C38),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset(
                            "images/MilkCarton.png",
                            width: 30,
                            height: 30,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Divider(indent: 35, endIndent: 35),
          const SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Description(description: widget.coffee.description),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Navbar(price: widget.coffee.price),
    );
  }
}
