import 'dart:developer' as dev;

import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/features/comprovante/data/localdatasource/comprovante_local_data_source.dart';
import 'package:logistica_entregador/features/comprovante/domain/entities/comprovante_entity.dart';
import 'package:logistica_entregador/features/comprovante/domain/repositories/comprovante_repository.dart';

import '../../../../core/error/app_database_exception.dart';
import '../../../../core/error/failure.dart';
import '../mappers/comprovante_mapper.dart';

class ComprovanteRepositoryImpl implements ComprovanteRepository {
  final ComprovanteLocalDataSource _localDataSource;

  ComprovanteRepositoryImpl(this._localDataSource);

  @override
  Future<Either<Failure, Unit>> delete(ComprovanteEntity comprovante) async {
    try {
      final localModel = comprovante.toLocalModel();
      await _localDataSource.delete(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: delete: Erro inesperado ao deletar comprovante.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: delete: Erro inesperado ao deletar comprovante.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro inesperado ao deletar comprovante.'));
    }
  }

  @override
  Future<Either<Failure, List<ComprovanteEntity>>> getAll() async {
    try {
      final localModels = await _localDataSource.getAll();
      final entities = localModels.map((model) => model.toEntity()).toList();

      return Right(entities);
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: getAll: Erro inesperado ao buscar Clientes.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: getAll: Erro inesperado ao buscar Clientes.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro inesperado ao buscar Clientes.'));
    }
  }

  @override
  Future<Either<Failure, ComprovanteEntity?>> getOneById(String comprovanteId) async {
    try {
      final localModel = await _localDataSource.getOneById(comprovanteId);

      return Right(localModel?.toEntity());
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: getOneById: Erro inesperado ao buscar comprovante.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: getOneById: Erro inesperado ao buscar comprovante.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro inesperado ao buscar comprovante.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> insert(ComprovanteEntity comprovante) async {
    try {
      final localModel = comprovante.toLocalModel();
      await _localDataSource.insert(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: insert: Erro inesperado ao salvar comprovante.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: insert: Erro inesperado ao salvar comprovante.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro inesperado ao salvar comprovante.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> update(ComprovanteEntity comprovante) async {
    try {
      final localModel = comprovante.toLocalModel();
      await _localDataSource.update(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: update: Erro inesperado ao salvar comprovante.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: update: Erro inesperado ao salvar comprovante.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro inesperado ao salvar comprovante.'));
    }
  }
}
