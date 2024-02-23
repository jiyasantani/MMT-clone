import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Widgets/more_category.dart';
import 'package:my_app/category.dart';
import 'package:my_app/screens/hotel_screen.dart';
import 'package:my_app/screens/ticket_view.dart';
import 'package:my_app/utils/app_layout.dart';

import 'package:my_app/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 380,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Good Morning, Jiya",
                            style: Styles.headLineStyle3,
                          ),
                          Text(
                            "Make your trips flexible & affordable. Book your stay NOW and pay later",
                            style: Styles.textStyle,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205)),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcomming Flights",
                      style: Styles.headLineStyle1,
                    ),
                    InkWell(
                      onTap: () {
                        print("You are tapped");
                      },
                      child: Text("View all",
                          style: Styles.textStyle
                              .copyWith(color: Styles.primaryColor)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(children: [
              TicketView(),
              TicketView(),
            ]),
          ),
          SizedBox(
            height: 7,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotels",
                  style: Styles.headLineStyle2,
                ),
                InkWell(
                  onTap: () {
                    print("You are Tapped");
                  },
                  child: Text(
                    "View all",
                    style: Styles.textStyle.copyWith(color: Styles.textColor),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(children: [
              HotelScreen(),
              HotelScreen(),
              HotelScreen(),
              HotelScreen(),
            ]),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              CategoryPannel(),
              CategoryPannel(),
              CategoryPannel(),
              CategoryPannel(),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          // Row(
          //   children: [
          //     MoreCategory(),
          //   ],
          // ),
        ],
      ),
    );
  }

  Card serviceCard(IconData icon, String title) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, size: 30.0),
          SizedBox(height: 7.0),
          Text(title, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
