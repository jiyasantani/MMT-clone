import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/utils/app_layout.dart';
import 'package:my_app/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  var category = [
    'Best Places',
    'Most Visited',
    'Favourites',
    'New Added',
    'Hotels',
    'Restaurants'
  ];
  HotelScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.8,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      //decoration: BoxDecoration(color: Styles.primaryColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/hotel1.jpg'),
                    opacity: 0.7)),
            child: Column(children: [
              Container(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.bookmark_border_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Spacer(),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "City",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
