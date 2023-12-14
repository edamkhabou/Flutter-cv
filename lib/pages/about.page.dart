import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';
class AboutPage extends StatelessWidget {
  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    final top = coverHeight - profileHeight / 2;
    final bottom = profileHeight / 2;

    return Scaffold(
      backgroundColor: Colors.indigo.shade400,
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: bottom),
            child: buildCoverImage(),
          ),
          Positioned(
            top: top,
            child: buildProfileImage(),
          ),
          Positioned(
            top: 40,
            left: 10,
            child: IconButton(
              icon: FaIcon(FontAwesomeIcons.arrowLeft, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          Positioned(
            top: top + profileHeight + 20,
            child: Column(
              children: [
                Text(
                  'Adam khabou'.tr,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: GestureDetector(
                        onTap: ()  {
                          launchUrlString("https://mail.google.com/mail/u/1/#inbox");
                        },
                        child: IgnorePointer(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.email,
                                size: 40,
                                color: Colors.blue,
                              ),
                              Text(
                                'Email'.tr,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 40),
                    InkWell(
                      onTap: () async {
                        Uri phonenom = Uri.parse('tel:+21695281545');
                        if (await launchUrl(phonenom)) {
                          //dialer opened
                        } else {
                          //dailer is not opened
                        }
                      },
                      child: IgnorePointer(
                      child: Column(
                        children: [
                          Icon(
                            Icons.phone,
                            size: 40,
                            color: Colors.green,
                          ),
                          Text(
                            'Phone'.tr,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ),
                    SizedBox(width: 40),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.map,
                            size: 40,
                            color: Colors.red,
                          ),
                          Text(
                            'Adresse'.tr,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: top + profileHeight + 150,
            left: 20,
            child: Text(
              'About Me'.tr,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: top + profileHeight + 190,
            left: 20,
            right: 20,
            child: Text(
              '''I'm a student at Higher Institute of
  Technological Studies of Sfax. My studies
  and experience helped me to develop my
  programming and teamwork skills, and
  through various projects, I have gained
  skills in time management. I am excited
  to work with you, share my experience,
  and help develop my skills as well.'''.tr,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: top + profileHeight + 360,
            left: 20,
            child: Text(
              'Date and place of birth'.tr,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: top + profileHeight + 390,
            left: 20,
            child: Text(
              'Sfax  -  24/10/2002       Age : 21'.tr,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.asset(
          'assets/image.jpg',
          width: double.infinity,
          height: coverHeight,
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: AssetImage('assets/adam2.jpg'),
      );

  Widget buildAbout() => Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
            ],
          ),
        ],
      );
}
