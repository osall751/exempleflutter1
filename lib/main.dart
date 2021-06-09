import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:suzane/listepersonnes.dart';
import 'package:suzane/page1.dart';
import 'package:suzane/page2.dart';
import 'package:suzane/page3.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.deepOrange,
      ),
      // brightness: Brightness.dark
    ),
    // home: Page3(),
    debugShowCheckedModeBanner: false,
    initialRoute: "/liste",
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
      "/liste": (context) {
        return ListePersonnes();
      },
    },
  ));
}
