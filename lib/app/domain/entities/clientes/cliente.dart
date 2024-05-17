// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../../domain.dart';

class Cliente {
  final int id;
  final String nome;
  final String email;
  final String telefone;

  Cliente({
    required this.id,
    required this.nome,
    required this.email,
    required this.telefone,
  });
}
