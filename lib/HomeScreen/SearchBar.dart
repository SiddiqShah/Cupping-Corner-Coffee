import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 56,
              decoration: BoxDecoration(
                color: const Color(0xff2F201C),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 8.0),
                    child: Icon(Icons.search, color: Colors.white, size: 24),
                  ),
                  Expanded(
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                      decoration: const InputDecoration(
                        hintText: 'Search...',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 217, 217, 217),
                          fontSize: 20,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 16),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xffBF6C38),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.tune,
                        color: Colors.white,
                        size: 20,
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
