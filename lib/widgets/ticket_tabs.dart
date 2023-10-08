import 'package:flutter/material.dart';
import '../utils/app_layout.dart';

class TicketTabs extends StatelessWidget {
  final String tab1, tab2;
  const TicketTabs({super.key, required this.tab1, required this.tab2});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
          color: const Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            // Airline Tickets
            Container(
              width: size.width * .44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(
                    AppLayout.getHeight(50),
                  ),
                ),
                color: Colors.white,
              ),
              child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(
                    AppLayout.getHeight(50),
                  ),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(
                      AppLayout.getHeight(50),
                    ),
                  ),
                  onTap: () {},
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(8)),
                      child: Center(child: Text(tab1))),
                ),
              ),
            ),
            // Hotels
            Container(
              width: size.width * .44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(
                    AppLayout.getHeight(50),
                  ),
                ),
                // color: Colors.white,
              ),
              child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(
                    AppLayout.getHeight(50),
                  ),
                ),
                child: InkWell(
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(
                        AppLayout.getHeight(50),
                      ),
                    ),
                    onTap: () {},
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(8)),
                        child: Center(child: Text(tab2)))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
