class Hour {
  String id;
  String data;
  int minutos;
  String? descricao;

  Hour(
      {required this.id,
      required this.data,
      required this.minutos});

  Hour.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        data = map['data'],
        minutos = map['minutos'],
        descricao = map['descricao'];

  Map<String, dynamic> toMap() {
    return {'id': id, 'data': data, 'minutos': minutos, 'descricao': descricao};
  }
}
