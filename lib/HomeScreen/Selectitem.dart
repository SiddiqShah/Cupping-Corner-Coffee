import 'package:flutter/material.dart';

class Selectitem extends StatelessWidget {
  final Color color;
  final String text;
  final Color txtColor;
  final bool isSelected;

  const Selectitem({
    super.key,
    required this.color,
    required this.text,
    required this.txtColor,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 5,
                    offset: const Offset(0, 5),
                  ),
                ]
              : null,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: txtColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
