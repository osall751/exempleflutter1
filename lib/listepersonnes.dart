import 'package:flutter/material.dart';

import 'outils.dart';

class ListePersonnes extends StatefulWidget {
  const ListePersonnes({Key? key}) : super(key: key);

  @override
  _ListePersonnesState createState() => _ListePersonnesState();
}

class _ListePersonnesState extends State<ListePersonnes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Outils.buildAppBar("Liste de Personnes"),
      body: ListView.separated(
        itemCount: 250,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: Colors.white,
        ),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('item $index'),
            tileColor: Colors.deepOrange,
            subtitle: Text("Sous titre"),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.delete),
          );
        },
      ),
      bottomNavigationBar: Outils.buildBottomNavigationBar(context),
    );
  }
}
