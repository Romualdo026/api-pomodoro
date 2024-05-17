import 'package:api_pomodoro/app/api/api.dart';
import 'package:test/test.dart';

import '../../../../../mock.dart';

void main() {
  late ClientesController controller;
  late MockGetClientesUseCase mockGetClientesUseCase;

  setUpAll(() {
    mockGetClientesUseCase = MockGetClientesUseCase();
    controller = ClientesController(getClientesUseCase: mockGetClientesUseCase);
  });

  group('ClientesController:', () {
    test('deve conter uma rota "/clientes"', () async {
      expect(controller.route, '/clientes');
    });

    test('deve conter uma uma chave "GET" para o handler GetClientesHandler',
        () async {
      expect(controller.handlers['GET'], isA<GetClientesHandler>());
    });
  });
}
