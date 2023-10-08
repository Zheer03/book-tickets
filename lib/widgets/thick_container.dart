import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  final bool isWhite;
  const ThickContainer({super.key, this.isWhite = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            width: 2.5,
            color: isWhite ? const Color(0xFF8ACCF7) : Colors.white),
      ),
    );
  }
}
