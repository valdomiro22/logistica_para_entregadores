import 'dart:developer' as dev;

import 'package:logistica_entregador/features/entrega/data/dao/entrega_dao.dart';
import 'package:logistica_entregador/features/entrega/data/localdatasource/entrega_local_datacource.dart';
import 'package:logistica_entregador/features/entrega/data/models/entrega_local_model.dart';

import '../../../../core/error/app_database_exception.dart';

class EntregaLocalDatacourceImpl extends EntregaLocalDatacource {
  final EntregaDao _dao;

  EntregaLocalDatacourceImpl(this._dao);

  @override
  Future<void> delete(EntregaLocalModel entrega) async {
    try {
      return await _dao.delete(entrega);
    } catch (e, stackTrace) {
      dev.log(
        'entregaLocalDataSourceImpl: delete: Erro ao deletar entrega no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao deletar entrega no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<List<EntregaLocalModel>> getAll() async {
    try {
      return await _dao.getAll();
    } catch (e, stackTrace) {
      dev.log(
        'entregaLocalDataSourceImpl: getAll: Erro ao buscar todos os entregas no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao buscar todos os entregas no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<EntregaLocalModel?> getOneById(String entregaId) async {
    try {
      return await _dao.getOneById(entregaId);
    } catch (e, stackTrace) {
      dev.log(
        'entregaLocalDataSourceImpl: getOneById: Erro ao buscar entrega no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao buscar entrega no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> insert(EntregaLocalModel entrega) async {
    try {
      return await _dao.insert(entrega);
    } catch (e, stackTrace) {
      dev.log(
        'entregaLocalDataSourceImpl: insert: Erro ao salvar entrega no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao salvar entrega no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> update(EntregaLocalModel entrega) async {
    try {
      await _dao.update(entrega);
    } catch (e, stackTrace) {
      dev.log(
        'entregaLocalDataSourceImpl: update: Erro ao atualizar entrega no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao atualizar entrega no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<List<EntregaLocalModel>> getAllEmtregasPorPorCliente(String clienteId) async {
    try {
      return await _dao.getAllEntregasPorCliente(clienteId);
    } catch (e, stackTrace) {
      dev.log(
        'EntregaLocalDatacourceImpl": getAllEmtregasPorPorCliente": Erro ao buscar entregas do cliente.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao buscar entregas do cliente.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<List<EntregaLocalModel>> getAllEmtregasPorStatus(String status) async {
    try {
      return await _dao.getAllEmtregasPorStatus(status);
    } catch (e, stackTrace) {
      dev.log(
        'EntregaLocalDatacourceImpl": getAllEmtregasPorStatus": Erro ao buscar entegas por status.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao buscar entegas por status..',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }
}
