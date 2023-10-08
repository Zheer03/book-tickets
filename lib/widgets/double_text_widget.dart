import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class DoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  final void Function()? smallTextOnTap;
  const DoubleTextWidget(
      {super.key,
      required this.bigText,
      required this.smallText,
      required this.smallTextOnTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: Styles.headLineStyle2),
        InkWell(
          onTap: smallTextOnTap,
          child: Text(smallText, style: Styles.headLineStyle3),
        ),
      ],
    );
  }
}
