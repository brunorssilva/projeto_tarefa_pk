library projeto_tarefa_pk;

import 'package:intl/intl.dart';

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

  String concatenaDescricao() {
    return 'Descrição: $nome';
  }

  String concatenaData() {
    return 'Data: ${DateFormat('dd/MM/yyyy HH:mm').format(dataHora)}';
  }

  String concatenaGeolocalizacao() {
    return 'Latitude Longitude \n$geolocalizacao';
  }

  static Tarefa fromMap(String id, Map<String, dynamic> map) {
    var taref = Tarefa(map['nome'], map['dataHora'], map['geolocalizacao']);
    taref.id = id;
    return taref;
  }
}
