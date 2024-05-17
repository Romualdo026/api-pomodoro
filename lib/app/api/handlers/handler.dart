// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../api.dart';

class ResponseHandler<T> {
  final StatusHandler status;
  final T? body;

  ResponseHandler({
    required this.status,
    this.body,
  });
}

enum StatusHandler {
  ok,
  internalServerError,
}

abstract class Handler {
  Future<ResponseHandler> call();
}
