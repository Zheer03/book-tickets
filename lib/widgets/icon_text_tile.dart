import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class IconTextTile extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconTextTile({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
        child: InkWell(
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.all(AppLayout.getHeight(12)),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: const Color(0xFFBFC2DF),
                ),
                Gap(AppLayout.getWidth(10)),
                Text(text, style: Styles.textStyle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
