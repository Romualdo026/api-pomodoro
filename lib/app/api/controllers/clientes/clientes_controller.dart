// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../../api.dart';

class ClientesController implements Controller {
  final GetClientesUseCase getClientesUseCase;

  ClientesController({required this.getClientesUseCase});
  @override
  String get route => '/clientes';

  @override
  Map<String, Handler> get handlers => {
        'GET': GetClientesHandler(getClientesUseCase: getClientesUseCase),
      };
}
