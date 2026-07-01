import 'dart:developer' as dev;

import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/core/error/failure.dart';
import 'package:logistica_entregador/features/endereco/data/localdatasource/endereco_local_data_source.dart';
import 'package:logistica_entregador/features/endereco/domain/entities/endereco_entity.dart';
import 'package:logistica_entregador/features/endereco/domain/repositories/endereco_repository.dart';

import '../../../../core/error/app_database_exception.dart';
import '../mappers/endereco_mapper.dart';

class EnderecoRepositoryImpl implements EnderecoRepository {
  final EnderecoLocalDataSource _localDataSource;

  EnderecoRepositoryImpl(this._localDataSource);

  @override
  Future<Either<Failure, Unit>> delete(EnderecoEntity endereco) async {
    try {
      final localModel = endereco.toLocalModel();
      await _localDataSource.delete(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'ProdutoRepositoryImpl: delete: Erro inesperado ao deletar endereco.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'ProdutoRepositoryImpl: delete: Erro inesperado ao deletar endereco.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro inesperado ao deletar endereco.'));
    }
  }

  @override
  Future<Either<Failure, List<EnderecoEntity>>> getAll() async {
    try {
      final localModels = await _localDataSource.getAll();
      final entities = localModels.map((model) => model.toEntity()).toList();

      return Right(entities);
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'ProdutoRepositoryImpl: getAll: Erro inesperado ao buscar enderecos.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'ProdutoRepositoryImpl: getAll: Erro inesperado ao buscar enderecos.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro inesperado ao buscar enderecos.'));
    }
  }

  @override
  Future<Either<Failure, EnderecoEntity?>> getOneById(String enderecoId) async {
    try {
      final localModel = await _localDataSource.getOneById(enderecoId);

      return Right(localModel?.toEntity());
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'ProdutoRepositoryImpl: getOneById: Erro inesperado ao buscar endereco.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'ProdutoRepositoryImpl: getOneById: Erro inesperado ao buscar endereco.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro inesperado ao buscar endereco.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> insert(EnderecoEntity endereco) async {
    try {
      final localModel = endereco.toLocalModel();
      await _localDataSource.insert(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'ProdutoRepositoryImpl: insert: Erro inesperado ao salvar endereco.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'ProdutoRepositoryImpl: insert: Erro inesperado ao salvar endereco.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro inesperado ao salvar endereco.'));
    }
  }

  @override
  Future<Either<Failure, Unit>> update(EnderecoEntity endereco) async {
    try {
      final localModel = endereco.toLocalModel();
      await _localDataSource.update(localModel);

      return const Right(unit);
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'ProdutoRepositoryImpl: update: Erro inesperado ao salvar endereco.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'ProdutoRepositoryImpl: update: Erro inesperado ao salvar endereco.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro inesperado ao salvar endereco.'));
    }
  }

  @override
  Future<Either<Failure, List<EnderecoEntity>>> getEnderecosOfCliente(String clienteId) async {
    try {
      final localModels = await _localDataSource.getEnderecosOfCliente(clienteId);
      final entities = localModels.map((model) => model.toEntity()).toList();

      return Right(entities);
    } on AppDatabaseException catch (e, stackTrace) {
      dev.log(
        'EnderecoRepositoryImpl": getEnderecosOfCliente": Erro ao buscar endereços do cliente.',
        error: e,
        stackTrace: stackTrace,
      );

      return Left(DatabaseFailure(e.message));
    } catch (e, stackTrace) {
      dev.log(
        'EnderecoRepositoryImpl": getEnderecosOfCliente": Erro ao buscar endereços do cliente.',
        error: e,
        stackTrace: stackTrace,
      );

      return const Left(ErroInesperadoFailure('Erro ao buscar endereços do cliente.'));
    }
  }
}
