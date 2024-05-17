import 'dart:async';

import 'package:api_pomodoro/app/domain/domain.dart';
import 'package:api_pomodoro/app/infra/infra.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../mock.dart';

void main() {
  late MockConnection connection;
  late GetClientesDao dao;
  setUpAll(() {
    connection = MockConnection();
    dao = GetClientesDao(connection: connection);
  });
  group('getClientesDAO:', () {
    test('deve retornar uma lista de clientes', () async {
      when(() => connection.query(any())).thenAnswer((_) async => [
            {
              'id': 1,
              'nome': 'nome',
              'email': 'email@email.com',
              'telefone': '37999375966'
            }
          ]);

      when(() => connection.close())
          .thenAnswer((invocation) async => Completer<void>().complete());
      final result = await dao.call();

      expect(result, isA<List<Cliente>>());
    });
  });
}
