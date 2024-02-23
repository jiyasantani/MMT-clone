import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/utils/app_layout.dart';
import 'package:my_app/utils/app_styles.dart';

class CategoryPannel extends StatelessWidget {
  CategoryPannel({Key? key}) : super(key: key);

  var category = [
    'Best Places',
    'Most Visited',
    'Favourites',
    'New Added',
    'Hotels',
    'Restaurants'
  ];

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.25,
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
      // child: Column(children: [
      //   Row(
      //     children: [
      //       Expanded(
      //           child: Container(
      //         height: 120,
      //         child: ListView.builder(
      //             itemCount: 6,
      //             //scrollDirection: Axis.horizontal,
      //             shrinkWrap: true,
      //             itemBuilder: (BuildContext context, int index) {
      //               return InkWell(
      //                 onTap: () {},
      //                 child: Container(
      //                   width: 73,
      //                   padding: EdgeInsets.all(10),
      //                   margin: EdgeInsets.only(left: 10),
      //                   decoration: BoxDecoration(
      //                     color: Colors.black,
      //                     borderRadius: BorderRadius.circular(15),
      //                     image: DecorationImage(
      //                       //city1.jpg
      //                       image: AssetImage("assets/logo${index + 1}.png"),
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                   child: Column(children: [
      //                     Container(
      //                       alignment: Alignment.topRight,
      //                     ),
      //                     Spacer(),
      //                     Container(
      //                       alignment: Alignment.bottomLeft,
      //                       child: Text(
      //                         "City Name",
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 17,
      //                           fontWeight: FontWeight.w600,
      //                         ),
      //                       ),
      //                     ),
      //                   ]),
      //                 ),
      //               );
      //             }),
      //       )),
      //     ],
      //   ),
      // ])

      // child: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     Container(
      //       height: 110,
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(15),
      //           color: Styles.primaryColor,
      //           image: const DecorationImage(
      //               fit: BoxFit.cover, image: AssetImage("assets/logo1.png"))),
      //     ),
      //   ],
      // ),

      // child: Row(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: List.generate(4, (index) {
      //     // Replace 10 with the number of images you have
      //     return Expanded(
      //       child: Container(
      //         height: 110,
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(12),
      //           color: Styles.primaryColor,
      //           image: DecorationImage(
      //               fit: BoxFit.cover,
      //               image: AssetImage("assets/logo${index + 1}.png")),
      //         ),
      //       ),
      //     );
      //   }),
      // ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(4),
              child: Row(children: [
                
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 3),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                        )
                      ]),
                  child: FittedBox(
                    // Wrap with FittedBox
                    fit: BoxFit.contain,
                    child: Image.asset('assets/logo1.png'),
                  ),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
