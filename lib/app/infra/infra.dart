library infra;

import 'package:api_pomodoro/app/data/data.dart';
import 'package:api_pomodoro/app/domain/domain.dart';
import 'package:postgres/postgres.dart';

part 'dao/clientes/get_clientes_dao.dart';
part 'connection/connection.dart';
part 'connection/fake/fake_db.dart';
part 'connection/postgres/postgres.dart';

class ClienteDB {
  ClienteDB._();

  static Cliente toEntity(Map<String, dynamic> row) {
    return Cliente(
        id: row['id'],
        nome: row['nome'],
        email: row['email'],
        telefone: row['telefone']);
  }
}
