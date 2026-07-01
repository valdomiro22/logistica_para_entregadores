import 'dart:developer' as dev;

import 'package:logistica_entregador/features/comprovante/data/database/table_comprovante.dart';
import 'package:logistica_entregador/features/comprovante/data/models/comprovante_local_model.dart';
import 'package:sqflite/sqflite.dart';

import '../../../../core/database/app_database.dart';

class ComprovanteDao {
  final AppDatabase _database;

  ComprovanteDao(this._database);

  Future<void> insert(ComprovanteLocalModel comprovante) async {
    final db = await _database.database;

    dev.log('ComprovanteDao: insert: Comprovante para salvar: ${comprovante.toString()}.');

    await db.insert(
      TableComprovante.tableName,
      comprovante.toMap(),
      conflictAlgorithm: ConflictAlgorithm.abort,
    );
  }

  Future<void> update(ComprovanteLocalModel comprovante) async {
    final db = await _database.database;

    await db.update(
      TableComprovante.tableName,
      comprovante.toMap(),
      where: '${TableComprovante.id} = ?',
      whereArgs: [comprovante.id],
    );
  }

  Future<void> delete(ComprovanteLocalModel comprovante) async {
    final db = await _database.database;

    await db.delete(
      TableComprovante.tableName,
      where: '${TableComprovante.id} = ?',
      whereArgs: [comprovante.id],
    );
  }

  Future<List<ComprovanteLocalModel>> getAll() async {
    final db = await _database.database;

    final result = await db.query(
      TableComprovante.tableName,
      orderBy: '${TableComprovante.criadoEm} DESC',
    );

    return result.map(ComprovanteLocalModel.fromMap).toList();
  }

  Future<ComprovanteLocalModel?> getOneById(String comprovanteId) async {
    final db = await _database.database;

    final result = await db.query(
      TableComprovante.tableName,
      where: '${TableComprovante.id} = ?',
      whereArgs: [comprovanteId],
      limit: 1,
    );

    if (result.isEmpty) return null;

    return ComprovanteLocalModel.fromMap(result.first);
  }
}
