import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projetmastegl/page1.dart';

import 'outils.dart';

class Page3 extends StatefulWidget {
  // Page2({Key key}) : super(key: key);
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  var resultat = 0;
  var coul = Color.fromRGBO(255, 255, 255, 1);
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.landscapeRight,
    //   // DeviceOrientation.portraitUp,
    // ]);
    return Container(
      child: Scaffold(
        backgroundColor: coul,
        appBar: Outils.buildAppBar("Page 3"),
        floatingActionButton: Outils.buildFloatingActionButton(),
        bottomNavigationBar: Outils.buildBottomNavigationBar(context),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Votre Vote ? ",
                style: TextStyle(color: Colors.red, fontSize: 30),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          resultat++;
                          print(resultat);
                        });
                      },
                      icon: Icon(Icons.thumb_up)),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          print(resultat);
                          resultat--;
                        });
                      },
                      icon: Icon(Icons.thumb_down))
                ],
              ),
              Text(
                "Résultat : $resultat",
                style: TextStyle(color: Colors.red, fontSize: 30),
              ),
              TextButton(
                child: Text('Changer la couleur'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.deepOrange,
                  onSurface: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    var rand = Random();
                    var r = rand.nextInt(255);
                    var g = rand.nextInt(255);
                    var b = rand.nextInt(255);
                    coul = Color.fromRGBO(r, g, b, 1);
                  });
                },
              ),
              TextButton(
                child: Text('Aller à fenêtre n°2'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.deepOrange,
                  onSurface: Colors.grey,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Page1();
                    }),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
