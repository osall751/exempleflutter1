import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Outils {
  static BottomNavigationBar buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(currentIndex: 1, items: [
      BottomNavigationBarItem(
        label: "Acceuil",
        icon: IconButton(
            onPressed: () {
              SystemChrome.setPreferredOrientations(
                  [DeviceOrientation.landscapeLeft]);
              Navigator.pushNamed(context, "/");
            },
            icon: Icon(Icons.home)),
      ),
      BottomNavigationBarItem(
        label: "Page 2",
        icon: IconButton(
            onPressed: () {
              SystemChrome.setPreferredOrientations(
                  [DeviceOrientation.landscapeRight]);
              Navigator.pushNamed(context, "/page2");
            },
            icon: Icon(Icons.ac_unit)),
      ),
      BottomNavigationBarItem(
        label: "Page 3",
        icon: IconButton(
            onPressed: () {
              SystemChrome.setPreferredOrientations(
                  [DeviceOrientation.portraitUp]);
              Navigator.pushNamed(context, "/page3");
            },
            icon: Icon(Icons.search)),
      )
    ]);
  }

  static FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.red,
      child: Icon(
        Icons.add,
        color: Colors.amber,
      ),
    );
  }

  static AppBar buildAppBar(var title) {
    return AppBar(
      title: Text(
        "$title",
        style: TextStyle(fontSize: 30, color: Colors.yellow),
      ),
      backgroundColor: Colors.red,
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          print("Click de leading");
        },
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.help),
          onPressed: () {
            print("Click de help");
          },
        ),
        IconButton(
          icon: Icon(
            Icons.exit_to_app,
            size: 30,
            color: Colors.amber,
          ),
          onPressed: () {
            print("Click de exit");
            exit(0);
          },
        ),
      ],
    );
  }
}
