import 'dart:developer' as dev;

import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/core/error/app_database_exception.dart';
import 'package:logistica_entregador/core/error/failure.dart';
import 'package:logistica_entregador/features/cliente/data/localdatasource/cliente_local_data_source.dart';
import 'package:logistica_entregador/features/cliente/data/mappers/cliente_mapper.dart';
import 'package:logistica_entregador/features/cliente/domain/entities/cliente_entity.dart';
import 'package:logistica_entregador/features/cliente/domain/repositories/cliente_repository.dart';

class ClienteRepositoryImpl implements ClienteRepository {
  final ClienteLocalDataSource _localDataSource;

  ClienteRepositoryImpl(this._localDataSource);

  @override
  Future<Either<Failure, Unit>> delete(ClienteEntity cliente) async {
    try {
      final localModel = cliente.toLocalModel();
      await _localDataSource.delete(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: delete: Erro inesperado ao deletar cliente.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: delete: Erro inesperado ao deletar cliente.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro inesperado ao deletar cliente.'));
    }
  }

  @override
  Future<Either<Failure, List<ClienteEntity>>> getAll() async {
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
  Future<Either<Failure, ClienteEntity?>> getOneById(String clienteId) async {
    try {
      final localModel = await _localDataSource.getOneById(clienteId);

      return Right(localModel?.toEntity());
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: getOneById: Erro inesperado ao buscar cliente.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: getOneById: Erro inesperado ao buscar cliente.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro inesperado ao buscar cliente.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> insert(ClienteEntity cliente) async {
    try {
      final localModel = cliente.toLocalModel();
      await _localDataSource.insert(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: insert: Erro inesperado ao salvar cliente.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: insert: Erro inesperado ao salvar cliente.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro inesperado ao salvar cliente.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> update(ClienteEntity cliente) async {
    try {
      final localModel = cliente.toLocalModel();
      await _localDataSource.update(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: update: Erro inesperado ao salvar cliente.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: update: Erro inesperado ao salvar cliente.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro inesperado ao salvar cliente.'));
    }
  }
}
