import 'dart:developer' as dev;

import 'package:logistica_entregador/core/error/app_database_exception.dart';
import 'package:logistica_entregador/features/cliente/data/dao/cliente_dao.dart';
import 'package:logistica_entregador/features/cliente/data/localdatasource/cliente_local_data_source.dart';
import 'package:logistica_entregador/features/cliente/data/models/cliente_local_model.dart';

class ClienteLocalDataSourceImpl implements ClienteLocalDataSource {
  final ClienteDao _dao;

  ClienteLocalDataSourceImpl(this._dao);

  @override
  Future<void> delete(ClienteLocalModel cliente) async {
    try {
      return await _dao.delete(cliente);
    } catch (e, stackTrace) {
      dev.log(
        'clienteLocalDataSourceImpl: delete: Erro ao deletar cliente no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao deletar cliente no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<List<ClienteLocalModel>> getAll() async {
    try {
      return await _dao.getAll();
    } catch (e, stackTrace) {
      dev.log(
        'clienteLocalDataSourceImpl: getAll: Erro ao buscar todos os clientes no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao buscar todos os clientes no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<ClienteLocalModel?> getOneById(String clienteId) async {
    try {
      return await _dao.getOneById(clienteId);
    } catch (e, stackTrace) {
      dev.log(
        'clienteLocalDataSourceImpl: getOneById: Erro ao buscar cliente no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao buscar cliente no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> insert(ClienteLocalModel cliente) async {
    try {
      return await _dao.insert(cliente);
    } catch (e, stackTrace) {
      dev.log(
        'clienteLocalDataSourceImpl: insert: Erro ao salvar cliente no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao salvar cliente no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> update(ClienteLocalModel cliente) async {
    try {
      await _dao.update(cliente);
    } catch (e, stackTrace) {
      dev.log(
        'clienteLocalDataSourceImpl: update: Erro ao atualizar cliente no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao atualizar cliente no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }
}
