import 'package:api_pomodoro/app/api/api.dart';
import 'package:api_pomodoro/app/domain/domain.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../mock.dart';

void main() {
  late GetClientesHandler handler;
  late MockGetClientesUseCase mockGetClientesUseCase;

  setUpAll(
    () {
      mockGetClientesUseCase = MockGetClientesUseCase();
      handler = GetClientesHandler(getClientesUseCase: mockGetClientesUseCase);
    },
  );

  group('GetClienteHandler', () {
    test('deve retornoar uma instancia de ResponseHandler', () async {
      when(() => mockGetClientesUseCase.call()).thenAnswer((_) async => []);
      final result = await handler.call();

      expect(result, isA<ResponseHandler>());
    });

    test('deve retornoar um status OK', () async {
      when(() => mockGetClientesUseCase.call()).thenAnswer((_) async => []);
      final result = await handler.call();

      expect(result.status, StatusHandler.ok);
    });

    test('deve retornoar uma lista de ClienteOutputDTO', () async {
      when(() => mockGetClientesUseCase.call()).thenAnswer((_) async =>
          [Cliente(id: 1, nome: 'nome', email: 'email', telefone: 'telefone')]);
      final result = await handler.call();

      expect(result.body, isA<List<ClienteOutputDTO>>());
    });

    test(
        'deve retornoar um status internalServerError quando um erro desconhecido acontecer',
        () async {
      when(() => mockGetClientesUseCase.call()).thenThrow(Exception());
      final result = await handler.call();

      expect(result.status, StatusHandler.internalServerError);
    });
  });
}
