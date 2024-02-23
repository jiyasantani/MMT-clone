import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<String> labels = [
    'Game Time?',
    'Medicine Time',
    'Community Connect',
    'Appointments'
  ];

  final List<IconData> icons = [
    Icons.gamepad, // Replace these with your icons
    Icons.local_pharmacy,
    Icons.people,
    Icons.calendar_today
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Container(
            width: 300.0, // specify the width
            height: 100.0, // specify the height
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              image: DecorationImage(
                image: AssetImage('assets/sunflower.jpeg'), // Use your image
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 300.0,
            height: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: const Color.fromARGB(255, 255, 255, 255),
              image: DecorationImage(
                image: AssetImage('assets/hello.jpg'), // Use your image
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // child: Column(
          //   children: [
          //     ConstrainedBox(
          //       constraints: BoxConstraints(maxHeight: 200),
          //       child: Container(
          //         decoration: BoxDecoration(
          //           color: const Color.fromARGB(255, 255, 255, 255),
          //         ),
          //         child: GridView.count(
          //           crossAxisCount: 4,
          //           crossAxisSpacing: 10,
          //           mainAxisSpacing: 20,
          //           children: List.generate(8, (index) {
          //             return Center(
          //               child: Column(
          //                 children: <Widget>[
          //                   Container(
          //                     width: 70.0, // specify the width
          //                     height: 65.0, // specify the height
          //                     child: Image.asset('assets/logo$index.png',
          //                         fit: BoxFit.cover),
          //                   ),
          //                   Text(texts[index]),
          //                 ],
          //               ),
          //               // replace with your logo URLs
          //             );
          //           }),
          //         ),
          //       ),
          //     ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            children: List.generate(4, (index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white, // Change this to your desired color
                  border: Border.all(color: Colors.black),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(icons[index], size: 50),
                    Text(labels[index]),
                  ],
                ),
              );
            }),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              minimumSize: Size(400, 60), // This is the button color
            ),
            onPressed: () {
              // Put your code here that should be executed when the button is pressed
            },
            child: Text(
              'Contact Help', // This is the text on the button
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
