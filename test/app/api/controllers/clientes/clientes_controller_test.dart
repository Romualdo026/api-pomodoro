import 'package:api_pomodoro/app/api/api.dart';
import 'package:test/test.dart';

import '../../../../mock.dart';

void main() {
  late ClientesController controller;
  late MockGetClientesUseCase mockGetClientesUseCase;
  late MockAddClientesUseCase mockAddClientesUseCase;

  setUpAll(() {
    mockGetClientesUseCase = MockGetClientesUseCase();
    mockAddClientesUseCase = MockAddClientesUseCase();
    controller = ClientesController(
      getClientesUseCase: mockGetClientesUseCase,
      addClienteUseCase: mockAddClientesUseCase,
    );
  });

  group('ClientesController:', () {
    test('deve conter uma rota "/clientes"', () async {
      expect(controller.route, '/clientes');
    });

    test('deve conter uma uma chave "GET" para o handler GetClientesHandler',
        () async {
      expect(controller.handlers['GET'], isA<GetClientesHandler>());
    });

    test('deve conter uma uma chave "POST" para o handler AddClienteHandler',
        () async {
      expect(controller.handlers['POST'], isA<AddClienteHandler>());
    });
  });
}
