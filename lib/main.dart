import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "My First Page",
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        // title: const Text('TEAM STATUS'),
        //  backgroundColor: Colors.indigo.shade500,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () {
        //     print("Clicked");
        //   },
        // ),
        // actions: <Widget>[
        //   IconButton(
        //     icon: const Icon(Icons.notifications_none),
        //     onPressed: () {
        //       print("Notification Clicked");
        //     },
        //     color: Colors.white54,
        //   ),
        //   IconButton(
        //     icon: Icon(Icons.search),
        //     onPressed: () {
        //       print("Search Clicked");
        //     },
        //     color: Colors.white54,
        //   ),
        // ],
      // ),
     // rgb(19, 23, 60)
      body: Container(       
        color: Color.fromRGBO(19, 23, 60, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.only(right: 370.0, top: 1.0),
              child: Container(
                color: Colors.black,
                // margin:  EdgeInsets.only(left: 5.0),
                child: SvgPicture.asset('assets/images/Code4Odisha.svg',
                height: 60.0,
                width: 50.0,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 150.0),
              child: Column(
                children: const <Widget>[
                  Image(
                    image: AssetImage('assets/images/RACE.png'),
                  ),
                  Text(
                    '\t\t\t\t\t\tSTATUS',
                    style: (TextStyle(
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                alignment: const Alignment(0.0, 0.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 5,
                      blurRadius: 9,
                      offset: Offset(10.0, 6.0),
                    ),
                  ],
                ),
                height: 380,
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/images/soft_dev.png'),
                    const 
                    Text(
                      "\nYOU ARE IN \n\t\t\t\t\t\t\t\t\t\tRED ZONE",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 66.6),
              alignment: Alignment.topRight,              
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // minimumSize: Size(1,3),
                  textStyle: const TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),

                  primary: Colors.green,
                  onPrimary: Colors.white,

                ),
                child: const Text('\t\t\t\t+10\n \tOTHERS'),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
