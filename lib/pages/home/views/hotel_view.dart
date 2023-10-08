import 'package:book_tickets/utils/app_info_list.dart';
import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelView extends StatelessWidget {
  final int index;
  const HotelView({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(8)),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5,
            ),
          ]),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(15),
              vertical: AppLayout.getHeight(17),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: AppLayout.getHeight(180),
                  decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(12)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image:
                          AssetImage('assets/img/${hotelList[index]['image']}'),
                    ),
                  ),
                ),
                Gap(AppLayout.getHeight(10)),
                Text(
                  hotelList[index]['place'],
                  style:
                      Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
                ),
                Gap(AppLayout.getHeight(5)),
                Text(
                  hotelList[index]['destination'],
                  style: Styles.headLineStyle3.copyWith(color: Colors.white),
                ),
                Gap(AppLayout.getHeight(10)),
                Text(
                  '\$${hotelList[index]['price']}/night',
                  style: Styles.headLineStyle2.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
