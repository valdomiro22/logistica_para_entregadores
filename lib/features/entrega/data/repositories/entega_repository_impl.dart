import 'dart:developer' as dev;

import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/core/error/failure.dart';
import 'package:logistica_entregador/features/entrega/data/localdatasource/entrega_local_datacource.dart';
import 'package:logistica_entregador/features/entrega/domain/entities/entrega_entity.dart';
import 'package:logistica_entregador/features/entrega/domain/repositories/entrega_repository.dart';

import '../../../../core/error/app_database_exception.dart';
import '../mappers/entrega_mapper.dart';

class EntegaRepositoryImpl implements EntregaRepository {
  final EntregaLocalDatacource _localDataSource;

  EntegaRepositoryImpl(this._localDataSource);

  @override
  Future<Either<Failure, Unit>> delete(EntregaEntity entrega) async {
    try {
      final localModel = entrega.toLocalModel();
      await _localDataSource.delete(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: delete: Erro inesperado ao deletar entrega.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: delete: Erro inesperado ao deletar entrega.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro inesperado ao deletar entrega.'));
    }
  }

  @override
  Future<Either<Failure, EntregaEntity?>> getOneById(String entregaId) async {
    try {
      final localModel = await _localDataSource.getOneById(entregaId);

      return Right(localModel?.toEntity());
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: getOneById: Erro inesperado ao buscar entrega.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: getOneById: Erro inesperado ao buscar entrega.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro inesperado ao buscar entrega.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> insert(EntregaEntity entrega) async {
    try {
      final localModel = entrega.toLocalModel();
      await _localDataSource.insert(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: insert: Erro inesperado ao salvar entrega.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: insert: Erro inesperado ao salvar entrega.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro inesperado ao salvar entrega.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> update(EntregaEntity entrega) async {
    try {
      final localModel = entrega.toLocalModel();
      await _localDataSource.update(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: update: Erro inesperado ao salvar entrega.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'ClienteRepositoryImpl: update: Erro inesperado ao salvar entrega.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro inesperado ao salvar entrega.'));
    }
  }

  @override
  Future<Either<Failure, List<EntregaEntity>>> getAll() async {
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
  Future<Either<Failure, List<EntregaEntity>>> getAllEmtregasPorPorCliente(String clienteId) async {
    try {
      final localModels = await _localDataSource.getAllEmtregasPorPorCliente(clienteId);
      final entities = localModels.map((model) => model.toEntity()).toList();

      return Right(entities);
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'EntegaRepositoryImpl": getAllEmtregasPorPorCliente": Erro ao buscar entregas do cliente',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'EntegaRepositoryImpl": getAllEmtregasPorPorCliente": Erro ao buscar entregas do cliente',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro ao buscar entregas do cliente.'));
    }
  }

  @override
  Future<Either<Failure, List<EntregaEntity>>> getAllEmtregasPorStatus(String status) async {
    try {
      final localModels = await _localDataSource.getAllEmtregasPorStatus(status);
      final entities = localModels.map((model) => model.toEntity()).toList();

      return Right(entities);
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'EntegaRepositoryImpl": getAllEmtregasPorPorCliente": Erro ao buscar entregas por status',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'EntegaRepositoryImpl": getAllEmtregasPorPorCliente": Erro ao buscar entregas por status',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro ao buscar entregas por status.'));
    }
  }
}
