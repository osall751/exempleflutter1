import 'package:flutter/material.dart';
import 'package:projetmastegl/page1.dart';
import 'package:projetmastegl/page2.dart';
import 'package:projetmastegl/page3.dart';

void main() {
  runApp(MaterialApp(
    // home: Page3(),
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
