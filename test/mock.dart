import 'package:api_pomodoro/app/data/data.dart';
import 'package:api_pomodoro/app/domain/domain.dart';
import 'package:mocktail/mocktail.dart';

class MockGetClientesUseCase extends Mock implements GetClientesUseCase {}

class MockGetClientesGateway extends Mock implements GetClientesGateway {}

final cilenteMock =
    Cliente(id: 1, nome: 'nome', email: 'email', telefone: 'telefone');
