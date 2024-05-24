part of '../../infra.dart';

class FakeDb implements Connection {
  @override
  Future<void> close() async {
    print('Close connection');
  }

  @override
  Future<List<Map<String, dynamic>>> query(String statement,
      [Map<String, dynamic> params = const {}]) async {
    return [
      {
        'id': 1,
        'nome': 'nome teste',
        'email': 'email@email.com',
        'telefone': '(37) 99937-5967'
      },
      {
        'id': 2,
        'nome': 'nome teste dois',
        'email': 'email2@email.com',
        'telefone': '(37) 99937-5966'
      },
    ];
  }
}
