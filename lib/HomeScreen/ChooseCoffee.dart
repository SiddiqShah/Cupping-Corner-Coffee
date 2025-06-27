import 'package:flutter/material.dart';

class Choosecoffee extends StatelessWidget {
  final String img, title, subTitle, price, imge1;
  const Choosecoffee({
    super.key,
    required this.img,
    required this.title,
    required this.subTitle,
    required this.price,
    this.imge1 = 'images/addbtn.png',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Coffee Image - Centered and rounded
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  img,
                  height: 85,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                subTitle,
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.grey[600],
                  fontFamily: 'Poppins',
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Spacer(),
                  Image.asset(imge1, width: 32, height: 32),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
