import 'package:barcode_widget/barcode_widget.dart';
import 'package:book_tickets/pages/home/views/ticket_view.dart';
import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/column_layout.dart';
import 'package:book_tickets/widgets/layout_builder_widget.dart';
import 'package:book_tickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({super.key});

  @override
  State<TicketsPage> createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20),
            ),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text('Tickets', style: Styles.headLineStyle1),
              Gap(AppLayout.getHeight(20)),
              const TicketTabs(tab1: 'Upcoming', tab2: 'Previous'),
              Gap(AppLayout.getHeight(20)),
              const TicketView(index: 0, isWhite: true),
              Gap(AppLayout.getHeight(1)),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(15),
                  vertical: AppLayout.getHeight(20),
                ),
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(8)),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(
                          firstText: 'Zheer Muhamad',
                          secondText: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                          isWhite: true,
                        ),
                        ColumnLayout(
                          firstText: '5221 4785 6693 7749',
                          secondText: 'Paasport',
                          alignment: CrossAxisAlignment.end,
                          isWhite: true,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const LayoutBuilderWidget(
                      sections: 15,
                      width: 5,
                      height: 1,
                      isWhite: true,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(
                          firstText: '0055 4447 7147',
                          secondText: 'Number of E-Ticket',
                          alignment: CrossAxisAlignment.start,
                          isWhite: true,
                        ),
                        ColumnLayout(
                          firstText: 'B2SG28',
                          secondText: 'Booking Code',
                          alignment: CrossAxisAlignment.end,
                          isWhite: true,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const LayoutBuilderWidget(
                      sections: 15,
                      width: 5,
                      height: 1,
                      isWhite: true,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/img/visa.png', scale: 11),
                                Gap(AppLayout.getWidth(2)),
                                Text('**** 2462',
                                    style: Styles.headLineStyle3
                                        .copyWith(color: Colors.black54)),
                              ],
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text('Payment Method',
                                style: Styles.headLineStyle4),
                          ],
                        ),
                        const ColumnLayout(
                          firstText: '\$249.99',
                          secondText: 'Price',
                          alignment: CrossAxisAlignment.end,
                          isWhite: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(1)),
              // Barcode
              Container(
                padding: EdgeInsets.all(AppLayout.getHeight(20)),
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(8)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(AppLayout.getHeight(20))),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                    data: 'https://github.com/Zheer03/book-tickets',
                    barcode: Barcode.code128(),
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 70,
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              const TicketView(index: 0),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(18),
            top: AppLayout.getHeight(290),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(2.5)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 5,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(18),
            top: AppLayout.getHeight(290),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(2.5)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 5,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
