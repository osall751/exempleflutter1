import 'dart:math';

import 'package:flutter/material.dart';
import 'package:suzane/personne.dart';

import 'outils.dart';

class ListePersonnes extends StatefulWidget {
  const ListePersonnes({Key? key}) : super(key: key);

  @override
  _ListePersonnesState createState() => _ListePersonnesState();
}

class _ListePersonnesState extends State<ListePersonnes> {
  // List<Personne> maListePersonne;
  List<Personne> maListePersonne =
      List<Personne>.filled(250, Personne("", 0, "", ""), growable: true);
  @override
  void initState() {
    super.initState();
    maListePersonne = List.generate(
        250,
        (_) => Personne(donnezMoiUnNom(), donnezMoiUnNumTel(),
            donnezMoiUnMetier(), donnezMoiUnePhoto()));
  }

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
        itemCount: maListePersonne.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: Colors.black,
        ),
        itemBuilder: (BuildContext context, int index) {
          Personne pers = maListePersonne.elementAt(index);
          return ListTile(
            onTap: () {
              print("${pers.toString()}");
            },
            title: Text('${pers.nom}'),
            tileColor: Colors.amber,
            subtitle: Text("${pers.metier} -  ${pers.numTel}"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(pers.photo),
            ),
            trailing: IconButton(
                onPressed: () {
                  setState(() {
                    maListePersonne.removeAt(index);
                  });
                },
                icon: Icon(Icons.delete)),
          );
        },
      ),
      bottomNavigationBar: Outils.buildBottomNavigationBar(context),
    );
  }
}
