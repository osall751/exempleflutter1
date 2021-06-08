import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projetmastegl/page1.dart';
import 'package:projetmastegl/page2.dart';
import 'package:projetmastegl/page3.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(brightness: Brightness.dark),
    // home: Page3(),
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/": (context) {
        return Page1();
      },
      "/page2": (context) {
        return Page2();
      },
      "/page3": (context) {
        return Page3();
      },
    },
  ));
}
