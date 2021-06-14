class Personne {
  String nom;
  int numTel;
  String metier;
  String photo;
  Personne(
    this.nom,
    this.numTel,
    this.metier,
    this.photo,
  );

  @override
  String toString() {
    return 'Personne(nom: $nom, numTel: $numTel, metier: $metier, photo: $photo)';
  }
}
