import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class LayoutBuilderWidget extends StatelessWidget {
  final bool isWhite;
  final int sections;
  final double height, width;
  const LayoutBuilderWidget({
    super.key,
    this.isWhite = false,
    required this.sections,
    this.height = 2.0,
    this.width = 4.0,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
              (constraints.constrainWidth() / sections).floor(),
              (index) => Container(
                    width: AppLayout.getWidth(width),
                    height: AppLayout.getHeight(height),
                    color: isWhite ? Colors.black38 : Colors.white,
                  )),
        );
      },
    );
  }
}
