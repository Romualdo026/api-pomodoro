import 'package:api_pomodoro/app/data/data.dart';
import 'package:test/test.dart';

import '../../../../mock.dart';

void main() {
  late MockGetClientesGateway mockGetClientesGateway;
  late GetClientesService service;

  setUpAll(() {
    mockGetClientesGateway = MockGetClientesGateway();
    service = GetClientesService(getClientesGateway: mockGetClientesGateway);
  });
  test('deve retornar uma lista de clientes', () async {
    final result = await service.call();
  });
}
