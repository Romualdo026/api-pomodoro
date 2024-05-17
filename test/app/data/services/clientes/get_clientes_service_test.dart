import 'package:api_pomodoro/app/data/data.dart';
import 'package:api_pomodoro/app/domain/domain.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../mock.dart';

void main() {
  late MockGetClientesGateway mockGetClientesGateway;
  late GetClientesService service;

  setUpAll(() {
    mockGetClientesGateway = MockGetClientesGateway();
    service = GetClientesService(getClientesGateway: mockGetClientesGateway);
  });

  group('getClientesService', () {
    test('deve retornar uma lista de clientes', () async {
      when(() => mockGetClientesGateway.call())
          .thenAnswer((_) async => [cilenteMock]);
      final result = await service.call();

      expect(result, isA<List<Cliente>>());
    });
  });
}
