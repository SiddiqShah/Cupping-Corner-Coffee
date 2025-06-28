// HomeScreen/homeScreen.dart (Updated)
import 'package:cupping_corner_coffee/Details/DetailsScreen.dart';
import 'package:cupping_corner_coffee/HomeScreen/BottonNavBar.dart';
import 'package:cupping_corner_coffee/HomeScreen/ChooseCoffee.dart';
import 'package:cupping_corner_coffee/HomeScreen/SalesContainer.dart';
import 'package:cupping_corner_coffee/HomeScreen/SearchBar.dart';
import 'package:cupping_corner_coffee/HomeScreen/Selectitem.dart';
import 'package:cupping_corner_coffee/models/Models.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    final coffees = CoffeeData.coffees;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 233, 233),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Color(0xff000000), Color(0xff4E342E)],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 55,
                      left: 20,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Location',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: const [
                                Text(
                                  'London, Beijing',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'PlayfairDisplay',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 4),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              'images/profile.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Searchbar(),
                ],
              ),
            ),
            SaleContainer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    Selectitem(
                      color: Color(0xffBF6C38),
                      text: 'Cappuccino',
                      txtColor: Colors.white,
                      isSelected: true,
                    ),
                    Selectitem(
                      color: Color(0xffF2F2F2),
                      text: 'Cardamom',
                      txtColor: Colors.black,
                    ),
                    Selectitem(
                      color: Color(0xffF2F2F2),
                      text: 'Black Coffee',
                      txtColor: Colors.black,
                    ),
                    Selectitem(
                      color: Color(0xffF2F2F2),
                      text: 'Latte',
                      txtColor: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: coffees
                        .take(3)
                        .map(
                          (coffee) => Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Detailsscreen(coffee: coffee),
                                    ),
                                  );
                                },
                                child: Choosecoffee(
                                  img: coffee.image,
                                  title: coffee.name,
                                  subTitle: coffee.subtitle,
                                  price: coffee.price,
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: coffees
                        .skip(3)
                        .take(3)
                        .map(
                          (coffee) => Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          Detailsscreen(coffee: coffee),
                                    ),
                                  );
                                },
                                child: Choosecoffee(
                                  img: coffee.image,
                                  title: coffee.name,
                                  subTitle: coffee.subtitle,
                                  price: coffee.price,
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Bottonnavbar(),
    );
  }
}
