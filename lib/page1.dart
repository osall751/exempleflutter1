import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:suzane/outils.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Outils.buildAppBar("Page 1"),
      backgroundColor: Colors.green,
      body: buildCorpsPage(context),
      floatingActionButton: Outils.buildFloatingActionButton(),
      bottomNavigationBar: Outils.buildBottomNavigationBar(context),
      drawer: Drawer(
        child: ListView(),
      ),
    );
  }

  Container buildCorpsPage(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          color: Colors.black,
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.7,
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(50),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.rectangle,
                ),
                width: 300,
                height: 300,
                transform: Matrix4.rotationZ(0.1),
                child: ListView(
                    children: [Text(lorem(paragraphs: 1, words: 100))]),
                // child: Image.network(
                //     "https://s.france24.com/media/display/f5e222c0-80c8-11ea-a646-005056a964fe/w:1280/p:4x3/FR%20NW%20ENTRETIE_N%20MACKY%20SALL%20CLEAN%20LOGO%20.jpg"),
              ),
              Text(lorem(paragraphs: 1, words: 100))
            ],
          ),
        ),
      ),
    );
  }
}
