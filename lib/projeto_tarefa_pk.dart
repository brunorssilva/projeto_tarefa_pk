library projeto_tarefa_pk;

class Tarefa {
  String? id;
  String nome;
  DateTime dataHora;
  String geolocalizacao;

  Tarefa(
    this.nome,
    this.dataHora,
    this.geolocalizacao,
  );

  String getdescricao() {
    return nome;
  }

  DateTime getdata() {
    return dataHora;
  }

  String getgeolocalizacao() {
    return geolocalizacao;
  }

  static Tarefa fromMap(String id, Map<String, dynamic> map) {
    var taref = Tarefa(map['nome'], map['dataHora'], map['geolocalizacao']);
    taref.id = id;
    return taref;
  }
}
