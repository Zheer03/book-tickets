import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/icon_text_tile.dart';
import 'package:book_tickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/app_layout.dart';
import '../../widgets/double_text_widget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            'What are\nyou looking for?',
            style: Styles.headLineStyle1
                .copyWith(fontSize: AppLayout.getHeight(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          const TicketTabs(tab1: 'Airline Tickets', tab2: 'Hotels'),
          Gap(AppLayout.getHeight(25)),
          const IconTextTile(
              icon: Icons.flight_takeoff_outlined, text: 'Departure'),
          Gap(AppLayout.getHeight(20)),
          const IconTextTile(icon: Icons.flight_land_outlined, text: 'Arrival'),
          Gap(AppLayout.getHeight(25)),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              elevation: const MaterialStatePropertyAll(0),
              padding: MaterialStatePropertyAll(
                  EdgeInsets.all(AppLayout.getHeight(16))),
              backgroundColor:
                  const MaterialStatePropertyAll(Color(0xD91130CE)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
              )),
            ),
            child: Text(
              'Find tickets',
              style: Styles.textStyle.copyWith(color: Colors.white),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          DoubleTextWidget(
            bigText: 'Upcoming Flights',
            smallText: 'View all',
            smallTextOnTap: () {},
          ),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: AppLayout.getWidth(size.width * .42),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  child: InkWell(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.all(AppLayout.getHeight(15)),
                      child: Column(
                        children: [
                          Container(
                            height: AppLayout.getHeight(190),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getHeight(12)),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/img/sit.jpg')),
                            ),
                          ),
                          Gap(AppLayout.getHeight(12)),
                          Text(
                            '20% discount for early booking on business class tickets, don\'t miss out on this chance!',
                            style: Styles.headLineStyle2
                                .copyWith(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: AppLayout.getHeight(175),
                        width: size.width * .44,
                        decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18)),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18)),
                          child: InkWell(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(18)),
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.all(AppLayout.getHeight(15)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Discount\nfor survey',
                                    style: Styles.headLineStyle2.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Gap(AppLayout.getHeight(15)),
                                  Text(
                                    'Take the survey about our services and get discounts',
                                    style: Styles.headLineStyle2.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 18,
                              color: const Color(0xFF189999),
                            ),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    height: AppLayout.getHeight(210),
                    width: size.width * .44,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEC6545),
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18)),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18)),
                      child: InkWell(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18)),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(AppLayout.getHeight(15)),
                          child: Column(
                            children: [
                              Text(
                                'Take Love',
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Gap(AppLayout.getHeight(10)),
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '😍',
                                      style: TextStyle(
                                        fontSize: 32,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '🥰',
                                      style: TextStyle(
                                        fontSize: 42,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '😘',
                                      style: TextStyle(
                                        fontSize: 32,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
