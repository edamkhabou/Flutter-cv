import 'package:flutter/services.dart';
import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projet_cv/pages/Profile.page.dart';
import 'package:projet_cv/pages/about.page.dart';
import 'package:projet_cv/pages/competences.dart';
import 'package:projet_cv/pages/contact.page.dart';
import 'package:projet_cv/pages/work.page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'map.page.dart';
import 'package:get/get.dart';
class HomePage extends StatelessWidget {
  final List locales = [
    {'name': 'Anglais', 'locale': Locale('en', 'US')},
    {'name': 'Français', 'locale': Locale('fr', 'FR')},
    {'name': 'Arabe', 'locale': Locale('ar', 'TU')},
  ];
  updateLanguage(Locale locale){
  Get.back();
  Get.updateLocale(locale);
  }


  builddialog(BuildContext context){
    showDialog(context: context, builder: (builder){
      return AlertDialog(
        title: Text('Choose a language'),
        content: Container(
          width: double.maxFinite,
          child: ListView.separated(
            shrinkWrap: true,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      print(locales[index]['name']);
                      updateLanguage(locales[index]['locale']);
                    },
                      child: Text(locales[index]['name'])),
                );
              },
              separatorBuilder: (context,index){
                return Divider(
                  color: Colors.blue,
                );
              },
              itemCount: locales.length),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[400],
      body: Padding(
        padding: const EdgeInsets.only(
          left: 40.0,
          top: 60.0,
          right: 40.0,
          bottom: 0.0,
        ),
        child: Stack(
          children: [
            // Image
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/adam.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              child: CircularMenu(
              alignment: Alignment.topRight,
              curve: Curves.bounceOut,
              reverseCurve: Curves.bounceInOut,
              toggleButtonColor: Colors.indigo,
              items: [
                CircularMenuItem(
                  onTap: () {
                    launchUrlString("tel:+21695281545");
                  },
                  icon: Icons.phone,
                  color: Colors.greenAccent,
                ),
                CircularMenuItem(
                  onTap: () {
                    builddialog(context);
                  },
                  icon: Icons.translate,
                  color: Colors.blueAccent,
                ),
                CircularMenuItem(
                  onTap: () {
                    launchUrlString('https://drive.google.com/file/d/1COBcG9ZHaBsxolUUPowWcnKXNex3LTYE/view?usp=sharing');
                  },
                  icon: Icons.picture_as_pdf,
                  color: Colors.redAccent,
                ),
              ],
            ),),
            // Name and other text
            Positioned(
              top: 150,
              left: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Adam khabou'.tr,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Iset Student'.tr,
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  SizedBox(height: 40),
                  // Add other UI elements
                  // Navigation Icons
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePage()));
                        },
                        child: buildIconWithText(
                            'Portfolio'.tr, Icons.book, 40, Colors.white),
                      ),
                      SizedBox(height: 40),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutPage()));
                        },
                        child: buildIconWithText(
                            'About'.tr, Icons.info, 40, Colors.white),
                      ),
                      SizedBox(height: 40),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EducationPage()));
                        },
                        child: buildIconWithText(
                            'Formations'.tr, Icons.description, 40, Colors.white),
                      ),
                      SizedBox(height: 40),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WorkPage()));
                        },
                        child: buildIconWithText(
                            'Experience'.tr, Icons.work, 40, Colors.white),
                      ),
                      SizedBox(height: 40),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => ContactPage()));
                        },
                        child: buildIconWithText(
                            'Contact'.tr, Icons.contacts, 40, Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height:40),
                  // Social Media Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MapPage()), // Navigate to the MapPage
                          );
                        },
                        icon: FaIcon(FontAwesomeIcons.locationDot,
                            color: Colors.white),
                        label: Text(''),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.only(
                              left: 15.5, top: 10.0, right: 10.0, bottom: 10.0),
                          primary: Colors.deepOrange,
                        ),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton.icon(
                        onPressed: () async {
                          launchUrlString("mailto:adamkhabou719@gmail.com");
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.solidEnvelope,
                          color: Colors.white,
                        ),
                        label: Text(''),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.only(
                              left: 15.5,
                              top: 10.00,
                              right: 10.0,
                              bottom: 10.00),
                          primary: Colors.deepOrange,
                        ),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton.icon(
                        onPressed: () async {
                          final Uri _url =
                              Uri.parse('https://github.com/edamkhabou/');
                          if (!await launchUrl(_url)) {
                            throw Exception('Could not launch $_url');
                          }
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                        ),
                        label: Text(''),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.only(
                              left: 15.5,
                              top: 10.00,
                              right: 10.0,
                              bottom: 10.00),
                          primary: Colors.deepOrange,
                        ),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton.icon(
                        onPressed: () async {
                          final Uri _url =
                              Uri.parse('https://www.linkedin.com/');
                          if (!await launchUrl(_url)) {
                            throw Exception('Could not launch $_url');
                          }
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.linkedinIn,
                          color: Colors.white,
                        ),
                        label: Text(''),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Colors.deepOrange,
                          padding: EdgeInsets.only(
                              left: 15.5,
                              top: 10.00,
                              right: 10.0,
                              bottom: 10.00),
                        ),
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

  Widget buildIconWithText(
      String labelText, IconData iconData, double iconSize, Color textColor) {
    return Row(
      children: [
        Icon(iconData, size: iconSize, color: Colors.white),
        SizedBox(width: 10),
        Text(
          labelText,
          style: TextStyle(fontSize: 18, color: textColor),
        ),
      ],
    );
  }
}
