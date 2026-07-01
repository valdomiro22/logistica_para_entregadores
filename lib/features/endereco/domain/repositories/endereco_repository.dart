import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/features/endereco/domain/entities/endereco_entity.dart';

import '../../../../core/error/failure.dart';

abstract class EnderecoRepository {
  Future<Either<Failure, Unit>> insert(EnderecoEntity endereco);

  Future<Either<Failure, Unit>> update(EnderecoEntity endereco);

  Future<Either<Failure, Unit>> delete(EnderecoEntity endereco);

  Future<Either<Failure, List<EnderecoEntity>>> getAll();

  Future<Either<Failure, EnderecoEntity?>> getOneById(String enderecoId);

  Future<Either<Failure, List<EnderecoEntity>>> getEnderecosOfCliente(String clienteId);
}
