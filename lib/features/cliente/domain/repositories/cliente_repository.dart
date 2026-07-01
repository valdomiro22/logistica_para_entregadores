import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/core/error/failure.dart';
import 'package:logistica_entregador/features/cliente/domain/entities/cliente_entity.dart';

abstract class ClienteRepository {
  Future<Either<Failure, Unit>> insert(ClienteEntity cliente);

  Future<Either<Failure, Unit>> update(ClienteEntity cliente);

  Future<Either<Failure, Unit>> delete(ClienteEntity cliente);

  Future<Either<Failure, List<ClienteEntity>>> getAll();

  Future<Either<Failure, ClienteEntity?>> getOneById(String clienteId);
}
