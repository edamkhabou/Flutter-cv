import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WorkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[400],
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, top: 80.0, bottom: 200.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'My Experiences',
                      style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: RoundedContainer(
                        text1: 'Internship observation',
                        text2: 'Date : 17/01/2022-12/01/2022',
                        text3: 'Company: Logicom', // Second text
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: RoundedContainer(
                        text1: 'Perfecting Course',
                        text2: 'Date : 17/01/2023-12/01/2023',
                        text3: 'Company: ICS', // Second text
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: RoundedContainer(
                        text1: 'Intership in the summer',
                        text2: 'Date : 03/07/2023-01/10/2023',
                        text3: 'Comapany: ICS', // Second text
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 10,
            child: IconButton(
              icon: FaIcon(FontAwesomeIcons.arrowLeft, color: Colors.white),
              // Add a back arrow button
              onPressed: () {
                Navigator.of(context)
                    .pop(); // Navigate back to the previous page
              },
            ),
          ),
        ],
      ),
    );
  }
}

class RoundedContainer extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;

  RoundedContainer(
      {required this.text1, required this.text2, required this.text3});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.deepOrange,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            text1,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            text2,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          Text(
            text3,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          Icon(FontAwesomeIcons.check,color: Colors.white,)
        ],
      ),
    );
  }
}
