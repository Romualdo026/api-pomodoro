part of '../../api.dart';

class GetClientesHandler implements Handler {
  final GetClientesUseCase getClientesUseCase;

  GetClientesHandler({required this.getClientesUseCase});
  @override
  Future<ResponseHandler> call() async {
    try {
      final clientes = await getClientesUseCase();
      return ResponseHandler<List<ClienteOutputDTO>>(
        status: StatusHandler.ok,
        body: ClienteOutputDTO.toCollectionDTO(clientes),
      );
    } on Exception catch (e) {
      print(e.toString());
      return ResponseHandler(status: StatusHandler.internalServerError);
    }
  }
}
