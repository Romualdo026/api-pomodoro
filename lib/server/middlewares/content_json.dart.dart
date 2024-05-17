part of '../server.dart';

Middleware contentJSON() {
  return createMiddleware(
    responseHandler: (Response response) {
      return response.change(headers: {'content-type': 'application/json'});
    },
  );
}
