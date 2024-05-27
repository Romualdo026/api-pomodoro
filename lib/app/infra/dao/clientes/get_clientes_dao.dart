// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../../infra.dart';

class GetClientesDao implements GetClientesGateway {
  final Connection connection;

  GetClientesDao({
    required this.connection,
  });

  @override
  Future<List<Cliente>> call() async {
    late List<Cliente> map;
    try {
      final rows = await connection.query('SELECT * FROM clientes');
      map = rows.map(ClienteDB.toEntity).toList();
    } catch (e) {
      print(e);
    } finally {
      await connection.close();
    }
    return map;
  }
}
