import 'package:book_tickets/utils/app_info_list.dart';
import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/column_layout.dart';
import 'package:book_tickets/widgets/layout_builder_widget.dart';
import 'package:book_tickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final int index;
  final bool isWhite;
  const TicketView({super.key, required this.index, this.isWhite = false});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(165),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(8)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Blue part of the card/ticket
            Container(
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              decoration: BoxDecoration(
                color: isWhite ? Colors.white : const Color(0xFF526799),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(AppLayout.getHeight(20)),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticketList[index]['from']['code'],
                          style: Styles.headLineStyle3.copyWith(
                              color: isWhite ? Colors.black54 : Colors.white)),
                      const Spacer(),
                      ThickContainer(isWhite: isWhite),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: LayoutBuilderWidget(
                                sections: 7,
                                isWhite: isWhite,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.55,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isWhite
                                      ? const Color(0xFF8ACCF7)
                                      : Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ThickContainer(isWhite: isWhite),
                      const Spacer(),
                      Text(ticketList[index]['to']['code'],
                          style: Styles.headLineStyle3.copyWith(
                              color: isWhite ? Colors.black54 : Colors.white)),
                    ],
                  ),
                  Gap(AppLayout.getHeight(3)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticketList[index]['from']['name'],
                          style: Styles.headLineStyle4.copyWith(
                            color: isWhite ? null : Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        ticketList[index]['flying_time'],
                        style: Styles.headLineStyle4.copyWith(
                          color: isWhite ? Colors.black54 : Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticketList[index]['to']['name'],
                          style: Styles.headLineStyle4.copyWith(
                            color: isWhite ? null : Colors.white,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // Middle line of the card/ticket
            Container(
              color: isWhite ? Colors.white : Styles.orangeColor,
              child: Row(
                children: [
                  isWhite
                      ? Container()
                      : Container(
                          height: AppLayout.getHeight(20),
                          width: AppLayout.getWidth(10),
                          decoration: BoxDecoration(
                            color: Styles.bgColor,
                            borderRadius: BorderRadius.only(
                              topRight:
                                  Radius.circular(AppLayout.getHeight(10)),
                              bottomRight:
                                  Radius.circular(AppLayout.getHeight(10)),
                            ),
                          ),
                        ),
                  Expanded(
                    child: Padding(
                        padding: EdgeInsets.all(AppLayout.getHeight(12)),
                        child: LayoutBuilderWidget(
                          sections: 15,
                          width: 5,
                          height: 1,
                          isWhite: isWhite,
                        )),
                  ),
                  isWhite
                      ? Container()
                      : Container(
                          height: AppLayout.getHeight(20),
                          width: AppLayout.getWidth(10),
                          decoration: BoxDecoration(
                            color: Styles.bgColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppLayout.getHeight(10)),
                              bottomLeft:
                                  Radius.circular(AppLayout.getHeight(10)),
                            ),
                          ),
                        ),
                ],
              ),
            ),
            // Orange part of the card/ticket
            Container(
              padding: EdgeInsets.only(
                left: AppLayout.getHeight(16),
                right: AppLayout.getHeight(16),
                bottom: AppLayout.getHeight(16),
                top: AppLayout.getHeight(10),
              ),
              decoration: BoxDecoration(
                color: isWhite ? Colors.white : Styles.orangeColor,
                borderRadius: BorderRadius.vertical(
                  bottom: isWhite
                      ? Radius.zero
                      : Radius.circular(AppLayout.getHeight(20)),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(
                        firstText: ticketList[index]['date'],
                        secondText: 'Date',
                        alignment: CrossAxisAlignment.start,
                        isWhite: isWhite,
                      ),
                      ColumnLayout(
                        firstText: ticketList[index]['departure_time'],
                        secondText: 'Departure Time',
                        alignment: CrossAxisAlignment.center,
                        isWhite: isWhite,
                      ),
                      ColumnLayout(
                        firstText: ticketList[index]['number'].toString(),
                        secondText: 'Number',
                        alignment: CrossAxisAlignment.end,
                        isWhite: isWhite,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
