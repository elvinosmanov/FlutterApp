import 'package:demoApp/pages/choose_location.dart';
import 'package:demoApp/pages/home.dart';
import 'package:demoApp/pages/loading.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => Loading(),
      "/home": (context) => Home(),
      "/location": (context) => ChooseLocation(),
    },
  ));
}