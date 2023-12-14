import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[400],
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 30.0, top: 80.0, bottom: 200.0,right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30), // Adjust the spacing based on your needs
                Text(
                  'Portfolio',
                  style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30), // Adjust the spacing based on your needs
                Row(
                  children: [
                    SizedBox(width: 20), // Adjust the spacing based on your needs
                    Text(
                      'Education',
                      style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 20), // Adjust the spacing based on your needs
                Container(
              width: 400,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.indigo,
              ),

                   child: Row(
                     children: [
                       Column(
                children: [
                  SizedBox(height: 10), // Adjust the spacing based on your needs
                  Row(
                       children: [
                         SizedBox(width: 10), // Adjust the spacing based on your needs
                         Text(
                           '2021-2022',
                           style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                         ),
                         SizedBox(width: 50), // Adjust the spacing based on your needs
                         Text(
                           'ISET Sfax',
                           style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                         ),
                       ],
                 ),
                  SizedBox(height: 10),
                  Row(
                        children: [
                          SizedBox(width: 10), // Adjust the spacing based on your needs
                          Text(
                            'I got The 3rd in the IT department',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ],
                  ),// Adjust the spacing based on your needs
                ],
                ),
                       SizedBox(width: 30),
                       FaIcon(
                         FontAwesomeIcons.graduationCap,
                         color: Colors.white,
                       ),
                     ],
                   ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 400,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.indigo,
                  ),

                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 10), // Adjust the spacing based on your needs
                          Row(
                            children: [
                              SizedBox(width: 10), // Adjust the spacing based on your needs
                              Text(
                                '2020-2021',
                                style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 50), // Adjust the spacing based on your needs
                              Text(
                                'Baccalaureate',
                                style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SizedBox(width: 10), // Adjust the spacing based on your needs
                              Text(
                                'I got my technical baccalaureate',
                                style: TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ],
                          ),
                          Text(
                            'degree with with honors mention',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),// Adjust the spacing based on your needs
                        ],
                      ),
                      SizedBox(width: 10),
                      FaIcon(
                        FontAwesomeIcons.graduationCap,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 400,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.indigo,
                  ),

                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 10), // Adjust the spacing based on your needs
                          Row(
                            children: [
                              SizedBox(width: 10), // Adjust the spacing based on your needs
                              Text(
                                '2017-2018',
                                style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10), // Adjust the spacing based on your needs
                              Text(
                                'Mahmoud megdich',
                                style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SizedBox(width: 10), // Adjust the spacing based on your needs
                              Text(
                                'I got Into High School',
                                style: TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ],
                          ),
                          Text(
                            'Mahmoud Megdish',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      FaIcon(
                        FontAwesomeIcons.graduationCap,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    SizedBox(width: 20), // Adjust the spacing based on your needs
                    Text(
                      'Projects',
                      style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ProjectCard(
                  title: 'ArtyProd',
                  description: 'Projet django ',
                  color: Colors.deepPurple,
                  circleText: "Django",
                ),
                ProjectCard(
                  title: 'E_Commerce',
                  description: 'Projet Node-js , Next-js',
                  color: Colors.yellow,
                  circleText: "JavaScript",
                ),
                ProjectCard(
                  title: 'Gestion Bibliotheque',
                  description: 'Projet Angular',
                  color: Colors.red,
                  circleText: "Angular",
                ),
                ProjectCard(
                  title: 'Gestion de Stock',
                  description: 'Projet Spring Boot',
                  color: Colors.brown,
                  circleText: "Java",
                ),
                ProjectCard(
                  title: 'Gestion d\'eleve',
                  description: 'Projet desktop C#',
                  color: Colors.green,
                  circleText: "C #",
                ),
                // Add more ProjectCard widgets for additional projects
              ],
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

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String circleText; // New property for the text in front of the circle
  final Color color;

  ProjectCard({
    required this.title,
    required this.description,
    required this.circleText,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 300, // Set a fixed height for all ProjectCards
      child: Card(
        elevation: 3,
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      // Add an icon to the left of the card
                      FaIcon(
                        FontAwesomeIcons.github,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 8), // Adjust spacing as needed
                      Text(
                        title,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      SizedBox(width: 8),
                      Container(
                        height: 20, // Adjust the size of the circle
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: color, // Change the color of the circle
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        circleText,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
