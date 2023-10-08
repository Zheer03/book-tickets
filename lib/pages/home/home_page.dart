import 'package:book_tickets/pages/home/views/hotel_view.dart';
import 'package:book_tickets/pages/home/views/ticket_view.dart';
import 'package:book_tickets/utils/app_info_list.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          'Book Tickets',
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/img/img_1.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: const Color(0xFFF4F6FD),
                    filled: true,
                    prefixIcon: const Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: Color(0xFFBFC205),
                    ),
                    hintText: 'Search',
                    hintStyle: Styles.headLineStyle4,
                  ),
                ),
                const Gap(40),
                DoubleTextWidget(
                  bigText: 'Upcoming Flights',
                  smallText: 'View all',
                  smallTextOnTap: () {},
                ),
              ],
            ),
          ),
          const Gap(15),
          // Tickets
          SizedBox(
            height: 175,
            width: double.infinity,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: ticketList.length,
              itemBuilder: (context, index) {
                return TicketView(index: index);
              },
            ),
          ),
          const Gap(40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: DoubleTextWidget(
              bigText: 'Hotels',
              smallText: 'View all',
              smallTextOnTap: () {},
            ),
          ),
          const Gap(15),
          SizedBox(
            height: 350,
            width: double.infinity,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: hotelList.length,
              itemBuilder: (context, index) {
                return HotelView(index: index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
