import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/features/comprovante/domain/entities/comprovante_entity.dart';

import '../../../../core/error/failure.dart';

abstract class ComprovanteRepository {
  Future<Either<Failure, Unit>> insert(ComprovanteEntity comprovante);

  Future<Either<Failure, Unit>> update(ComprovanteEntity comprovante);

  Future<Either<Failure, Unit>> delete(ComprovanteEntity comprovante);

  Future<Either<Failure, List<ComprovanteEntity>>> getAll();

  Future<Either<Failure, ComprovanteEntity?>> getOneById(String comprovanteId);
}
