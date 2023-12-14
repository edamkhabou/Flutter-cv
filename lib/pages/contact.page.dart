import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();
  File? _image;

  Future _getImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[400],
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 30.0, top: 80.0, bottom: 200.0,right: 30.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  Text(
                    'Contact Me',
                    style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: _getImage,
                    child: _image == null
                        ? Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey[500],
                        borderRadius: BorderRadius.circular(100.0), // Make it a circle
                      ),
                      child: Icon(Icons.add_a_photo),
                    )
                        : ClipOval(
                      child: Image.file(
                        _image!,
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(labelText: 'Name'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(labelText: 'Email'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _messageController,
                    decoration: InputDecoration(labelText: 'Message'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a message';
                      }
                      return null;
                    },
                    maxLines: 4,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        // Form is valid, send email
                        final Email email = Email(
                          body: _messageController.text,
                          subject: 'Contact Form Submission from ${_nameController.text}',
                          recipients: ['adamkhabou719@gmail.com'],
                          isHTML: false,
                          attachmentPaths: _image != null ? [_image!.path] : null,
                        );

                        await FlutterEmailSender.send(email);
                      }
                    },
                    child: Text('Submit'),
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
