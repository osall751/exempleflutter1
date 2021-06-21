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
              afficherDialogue(pers);
            },
            title: Text('${pers.nom}'),
            tileColor: Colors.amber,
            subtitle: Text("${pers.metier} -  ${pers.numTel}"),
            leading: CircleAvatar(
              // radius: 200,
              backgroundImage: NetworkImage(pers.photo),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      maListePersonne.removeAt(index);
                    });
                  },
                  icon: Icon(Icons.delete),
                  color: Colors.red,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      //maListePersonne.removeAt(index);
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            child: Text("data"),
                          );
                        },
                      );
                    });
                  },
                  icon: Icon(Icons.edit),
                  color: Colors.green,
                )
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Outils.buildBottomNavigationBar(context),
    );
  }

  void afficherDialogue(Personne pers) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        backgroundColor: Colors.amber,
        title: const Text('Information sur la personne'),
        content: Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(pers.photo),
              radius: 100,
            ),
            Text(
              "Nom: ${pers.nom}",
              style: TextStyle(fontSize: 30),
            ),
            Text("Métier: ${pers.metier}", style: TextStyle(fontSize: 30)),
            Text("Numéro de Téléphone: ${pers.numTel}",
                style: TextStyle(fontSize: 30)),
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
