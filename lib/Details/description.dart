// Details/description.dart (Updated)
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class Description extends StatefulWidget {
  final String description;

  const Description({super.key, required this.description});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  int selectedIndex = 2; // 0 for S, 1 for M, 2 for L
  final sizes = ['S', 'M', 'L'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Description',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          ReadMoreText(
            widget.description,
            trimLines: 3,
            colorClickableText: const Color(0xffBF6C38),
            trimMode: TrimMode.Line,
            trimCollapsedText: ' Read More',
            trimExpandedText: ' Read Less',
            style: const TextStyle(fontSize: 15),
            moreStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xffBF6C38),
            ),
            lessStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xffBF6C38),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Size',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Row(
            children: List.generate(sizes.length, (index) {
              bool isSelected = index == selectedIndex;
              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: () => setState(() => selectedIndex = index),
                  child: Container(
                    width: 85,
                    height: 45,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? const Color(0xffFFF3ED)
                          : Colors.white,
                      border: Border.all(
                        color: isSelected
                            ? const Color(0xffBF6C38)
                            : Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        sizes[index],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: isSelected
                              ? const Color(0xffBF6C38)
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
