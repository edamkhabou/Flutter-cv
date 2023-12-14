import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[400],
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 100.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Compétences & certifications',
                      style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Languages',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 30),
                  Align(
                    alignment: Alignment.topLeft,
                    child: RoundedProgressBarWithPercentage(percent: 90, label: 'HTML/CSS                   '),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: RoundedProgressBarWithPercentage(percent: 80, label: 'Python                          '),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: RoundedProgressBarWithPercentage(percent: 60, label: 'JS                                  '),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: RoundedProgressBarWithPercentage(percent: 70, label: 'PHP                              '),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: RoundedProgressBarWithPercentage(percent: 95, label: 'C/C#                              '),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: RoundedProgressBarWithPercentage(percent: 55, label: 'Android Native            '),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: RoundedProgressBarWithPercentage(percent: 75, label: 'JAVA                            '),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'FrameWork',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 160, // Set the height of the horizontal scrollable area
                    child: ListView(
                      scrollDirection: Axis.horizontal, // Horizontal scrolling
                      children: <Widget>[
                        SizedBox(width: 20), // Add some initial space
                        CircularProgressBarWithPercentage(percent: 80, label: 'WordPress'),
                        SizedBox(width: 20),
                        CircularProgressBarWithPercentage(percent: 90, label: 'Django'),
                        SizedBox(width: 20),
                        CircularProgressBarWithPercentage(percent: 40, label: 'Angular'),
                        SizedBox(width: 20),
                        CircularProgressBarWithPercentage(percent: 85, label: 'NodeJS'),
                        SizedBox(width: 20),
                        CircularProgressBarWithPercentage(percent: 60, label: 'NextJS'),
                        SizedBox(width: 20),
                        CircularProgressBarWithPercentage(percent: 55, label: 'React'),
                        SizedBox(width: 20),
                        CircularProgressBarWithPercentage(percent: 70, label: 'Laravel'),
                        SizedBox(width: 20),
                        CircularProgressBarWithPercentage(percent: 60, label: 'DotNet'),
                        SizedBox(width: 20),
                        CircularProgressBarWithPercentage(percent: 90, label: 'Flutter'),
                        SizedBox(width: 20),
                        CircularProgressBarWithPercentage(percent: 0, label: 'Spring Boot'),
                        SizedBox(width: 20),
// Add space between items
                        // Add more CircularProgressBarWithPercentage widgets if needed
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 40,
              left: 10,
              child: IconButton(
                icon: FaIcon(FontAwesomeIcons.arrowLeft, color: Colors.white), // Add a back arrow button
                onPressed: () {
                  Navigator.of(context).pop(); // Navigate back to the previous page
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoundedProgressBarWithPercentage extends StatelessWidget {
  final int percent;
  final String label;

  RoundedProgressBarWithPercentage({required this.percent, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 300,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey,
          ),
          child: Stack(
            children: <Widget>[
              LinearProgressIndicator(
                value: percent / 100,
                backgroundColor: Colors.transparent,
                minHeight: 40,
                borderRadius: BorderRadius.circular(15),
              ),
              Center(
                child: Text(
                  '$label              $percent%',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
class CircularProgressBarWithPercentage extends StatelessWidget {
  final int percent;
  final String label;

  CircularProgressBarWithPercentage({required this.percent, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey,
          ),
          child: Stack(
            children: <Widget>[
              Center(
                child: CircularProgressIndicator(
                  value: percent / 100,
                  backgroundColor: Colors.transparent,
                  strokeWidth: 84, // Adjust the thickness of the progress bar
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue), // Change the color of the progress bar
                ),
              ),
              Center(
                child: Text(
                  '$percent%',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

