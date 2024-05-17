import 'package:api_pomodoro/config/config.dart';
import 'package:api_pomodoro/server/server.dart';

void main(List<String> args) async {
  Server.bootstrap(controllers)
      .then((server) => print('Server listening on port ${server.port}'))
      .catchError(print);
}
