import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

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
    return Container(
      child: Scaffold(
        backgroundColor: coul,
        appBar: AppBar(
          title: Text("Page 3"),
        ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
