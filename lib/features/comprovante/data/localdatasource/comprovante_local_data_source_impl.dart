import 'dart:developer' as dev;

import 'package:logistica_entregador/features/comprovante/data/dao/comprovante_dao.dart';
import 'package:logistica_entregador/features/comprovante/data/localdatasource/comprovante_local_data_source.dart';
import 'package:logistica_entregador/features/comprovante/data/models/comprovante_local_model.dart';

import '../../../../core/error/app_database_exception.dart';

class ComprovanteLocalDataSourceImpl implements ComprovanteLocalDataSource {
  final ComprovanteDao _dao;

  ComprovanteLocalDataSourceImpl(this._dao);

  @override
  Future<void> delete(ComprovanteLocalModel comprovante) async {
    try {
      return await _dao.delete(comprovante);
    } catch (e, stackTrace) {
      dev.log(
        'comprovanteLocalDataSourceImpl: delete: Erro ao deletar comprovante no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao deletar comprovante no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<List<ComprovanteLocalModel>> getAll() async {
    try {
      return await _dao.getAll();
    } catch (e, stackTrace) {
      dev.log(
        'comprovanteLocalDataSourceImpl: getAll: Erro ao buscar todos os comprovantes no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao buscar todos os comprovantes no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<ComprovanteLocalModel?> getOneById(String comprovanteId) async {
    try {
      return await _dao.getOneById(comprovanteId);
    } catch (e, stackTrace) {
      dev.log(
        'comprovanteLocalDataSourceImpl: getOneById: Erro ao buscar comprovante no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao buscar comprovante no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> insert(ComprovanteLocalModel comprovante) async {
    try {
      return await _dao.insert(comprovante);
    } catch (e, stackTrace) {
      dev.log(
        'comprovanteLocalDataSourceImpl: insert: Erro ao salvar comprovante no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao salvar comprovante no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> update(ComprovanteLocalModel comprovante) async {
    try {
      await _dao.update(comprovante);
    } catch (e, stackTrace) {
      dev.log(
        'comprovanteLocalDataSourceImpl: update: Erro ao atualizar comprovante no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
      throw AppDatabaseException(
        'Erro ao atualizar comprovante no banco local.',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }
}
