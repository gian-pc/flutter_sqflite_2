class Band {
  int? id;
  String bandName;
  String status;
  String favorite;

  Band({
    this.id,
    required this.bandName,
    required this.status,
    required this.favorite,
  });

  Map<String, dynamic> convertToMap() => {
        "id": id,
        "bandName": bandName,
        "status": status,
        "favorite": favorite,
      };
}
