import 'dart:math';

import 'package:flutter/material.dart';

import 'outils.dart';

class ListePersonnes extends StatefulWidget {
  const ListePersonnes({Key? key}) : super(key: key);

  @override
  _ListePersonnesState createState() => _ListePersonnesState();
}

class _ListePersonnesState extends State<ListePersonnes> {
  donnezMoiUnNom() {
    var noms = ["SALL", "NDIAYE", "DEME", "GUEYE", "FALL", "DIA", "FAYE"];
    var prenoms = [
      "Modou",
      "Anta",
      "Demba",
      "Coumba",
      "Fanta",
      "Diao",
      "Fallou"
    ];
    Random rand = Random();
    return prenoms[rand.nextInt(prenoms.length)] +
        " " +
        noms[rand.nextInt(noms.length)];
  }

  donnezMoiUnMetier() {
    var metiers = ["Avocat(e)", "Developpeur", "Architecte BD", "Policier"];
    Random rand = Random();
    return metiers[rand.nextInt(metiers.length)];
  }

  donnezMoiUnNumTel() {
    Random rand = Random();
    return 770000000 + rand.nextInt(9999999);
  }

  donnezMoiUnePhoto() {
    Random rand = Random();
    var image =
        "https://randomuser.me/api/portraits/women/${rand.nextInt(100)}.jpg";
    print(image);
    return image;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Outils.buildAppBar("Liste de Personnes"),
      body: ListView.separated(
        itemCount: 250,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: Colors.black,
        ),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('${donnezMoiUnNom()}'),
            tileColor: Colors.amber,
            subtitle: Text("${donnezMoiUnMetier()} -  ${donnezMoiUnNumTel()}"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(donnezMoiUnePhoto()),
            ),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
          );
        },
      ),
      bottomNavigationBar: Outils.buildBottomNavigationBar(context),
    );
  }
}
