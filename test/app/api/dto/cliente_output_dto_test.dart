import 'package:api_pomodoro/app/api/api.dart';
import 'package:api_pomodoro/app/domain/domain.dart';
import 'package:test/test.dart';

void main() {
  test('deve retornar uma lista de ClienteOutPutDTO', () async {
    final result = ClienteOutputDTO.toCollectionDTO([
      Cliente(id: 1, nome: 'nome', email: 'email', telefone: 'telefone'),
    ]);
    expect(result, isA<List<ClienteOutputDTO>>());
  });
}
