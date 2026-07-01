import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/core/error/failure.dart';
import 'package:logistica_entregador/features/entrega/domain/entities/entrega_entity.dart';

abstract class EntregaRepository {
  Future<Either<Failure, Unit>> insert(EntregaEntity entrega);

  Future<Either<Failure, Unit>> update(EntregaEntity entrega);

  Future<Either<Failure, Unit>> delete(EntregaEntity entrega);

  Future<Either<Failure, EntregaEntity?>> getOneById(String entregaId);

  Future<Either<Failure, List<EntregaEntity>>> getAll();

  Future<Either<Failure, List<EntregaEntity>>> getAllEmtregasPorStatus(String status);

  Future<Either<Failure, List<EntregaEntity>>> getAllEmtregasPorPorCliente(String clienteId);
}
