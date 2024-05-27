part of '../config.dart';

final controllers = <Controller>[
  ClientesController(
    getClientesUseCase: GetClientesService(
      getClientesGateway: GetClientesDao(connection: PostgresSQL()),
    ),
  ),
];
