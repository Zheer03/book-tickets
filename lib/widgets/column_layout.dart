import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class ColumnLayout extends StatelessWidget {
  final String firstText, secondText;
  final CrossAxisAlignment alignment;
  final bool isWhite;
  const ColumnLayout({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.alignment,
    this.isWhite = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText,
            style: Styles.headLineStyle3.copyWith(
              color: isWhite ? Colors.black54 : Colors.white,
            )),
        Gap(AppLayout.getHeight(5)),
        Text(secondText,
            style: Styles.headLineStyle4.copyWith(
              color: isWhite ? null : Colors.white,
            )),
      ],
    );
  }
}
