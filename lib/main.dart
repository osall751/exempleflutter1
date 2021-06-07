import 'package:flutter/material.dart';
import 'package:projetmastegl/page3.dart';

void main() {
  runApp(MaterialApp(
    home: Page3(),
  ));
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemple 2"),
      ),
      body: Container(
        child: Container(
          color: Colors.green,
          child: ListView(
            // mainAxisSize: MainAxisSize.max,
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Text1"),
              Text("Text2"),
              Text("Text3"),
              Container(
                color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Text4"),
                    Text("Text5"),
                    Text("Text6"),
                  ],
                ),
              ),
              Image.asset("images/img1.jpg"),
              Image.asset("images/img2.jpg"),
              Image.asset("images/img3.jpg"),
              Image.asset("images/img4.jpg")
            ],
          ),
        ),
      ),
    );
  }
}
