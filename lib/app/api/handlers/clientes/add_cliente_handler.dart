// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../../api.dart';

class AddClienteHandler implements Handler {
  final AddClienteUseCase addClienteUseCase;
  
  AddClienteHandler({
    required this.addClienteUseCase,
  });
  @override
  Future<ResponseHandler> call() {
    // TODO: implement call
    throw UnimplementedError();
  }
}
