part of '../../data.dart';

class GetClientesService implements GetClientesUseCase {
  final GetClientesGateway getClientesGateway;

  GetClientesService({required this.getClientesGateway});
  @override
  Future<List<Cliente>> call() async {
    return await getClientesGateway();
  }
}
