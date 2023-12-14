import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projet_cv/pages/LocalString.dart';
import 'package:projet_cv/pages/home.page.dart';
import 'package:get/get.dart';
void main() {

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(GetMaterialApp(
    translations: LocalString(),
    locale: Locale('en','US'),
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.deepOrange),// Use your component as the home
  ));
}