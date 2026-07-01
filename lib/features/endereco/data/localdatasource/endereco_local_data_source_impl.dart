import 'dart:developer' as dev;

import 'package:logistica_entregador/features/endereco/data/dao/endereco_dao.dart';
import 'package:logistica_entregador/features/endereco/data/localdatasource/endereco_local_data_source.dart';
import 'package:logistica_entregador/features/endereco/data/models/endereco_local_model.dart';

import '../../../../core/error/app_database_exception.dart';

class EnderecoLocalDataSourceImpl implements EnderecoLocalDataSource {
  final EnderecoDao _dao;

  EnderecoLocalDataSourceImpl(this._dao);

  @override
  Future<void> delete(EnderecoLocalModel endereco) async {
    try {
      return await _dao.delete(endereco);
    } catch (e, stackTrace) {
      dev.log(
        'ProdutoLocalDataSourceImpl: delete: Erro ao deletar endereco no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao deletar endereco no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<List<EnderecoLocalModel>> getAll() async {
    try {
      return await _dao.getAll();
    } catch (e, stackTrace) {
      dev.log(
        'ProdutoLocalDataSourceImpl: getAll: Erro ao buscar todos os enderecos no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao buscar todos os enderecos no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<EnderecoLocalModel?> getOneById(String enderecoId) async {
    try {
      return await _dao.getOneById(enderecoId);
    } catch (e, stackTrace) {
      dev.log(
        'ProdutoLocalDataSourceImpl: getOneById: Erro ao buscar endereco no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao buscar endereco no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> insert(EnderecoLocalModel endereco) async {
    try {
      return await _dao.insert(endereco);
    } catch (e, stackTrace) {
      dev.log(
        'ProdutoLocalDataSourceImpl: insert: Erro ao salvar endereco no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao salvar endereco no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> update(EnderecoLocalModel endereco) async {
    try {
      await _dao.update(endereco);
    } catch (e, stackTrace) {
      dev.log(
        'ProdutoLocalDataSourceImpl: update: Erro ao atualizar endereco no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao atualizar endereco no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<List<EnderecoLocalModel>> getEnderecosOfCliente(String clienteId) async {
    try {
      return await _dao.getEnderecosOfCliente(clienteId);
    } catch (e, stackTrace) {
      dev.log(
        'EnderecoLocalDataSourceImpl": getEnderecosOfCliente": Erro ao buscar endereços do cliente.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao buscar endereços do cliente.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }
}
