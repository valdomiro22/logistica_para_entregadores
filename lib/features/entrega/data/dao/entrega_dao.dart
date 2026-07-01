import 'package:logistica_entregador/core/database/app_database.dart';
import 'package:logistica_entregador/features/entrega/data/database/entrega_table.dart';
import 'package:logistica_entregador/features/entrega/data/models/entrega_local_model.dart';
import 'package:sqflite/sqflite.dart';

class EntregaDao {
  final AppDatabase _database;

  EntregaDao(this._database);

  Future<void> insert(EntregaLocalModel entrega) async {
    final db = await _database.database;

    await db.insert(
      EntregaTable.tableName,
      entrega.toMap(),
      conflictAlgorithm: ConflictAlgorithm.abort,
    );
  }

  Future<void> update(EntregaLocalModel entrega) async {
    final db = await _database.database;

    await db.update(
      EntregaTable.tableName,
      entrega.toMap(),
      where: '${EntregaTable.id} = ?',
      whereArgs: [entrega.id],
    );
  }

  Future<void> delete(EntregaLocalModel entrega) async {
    final db = await _database.database;

    await db.delete(
      EntregaTable.tableName,
      where: '${EntregaTable.id} = ?',
      whereArgs: [entrega.id],
    );
  }

  Future<List<EntregaLocalModel>> getAll() async {
    final db = await _database.database;

    final result = await db.query(EntregaTable.tableName, orderBy: '${EntregaTable.criadoEm} ASC');
    return result.map(EntregaLocalModel.fromMap).toList();
  }

  Future<EntregaLocalModel?> getOneById(String entregaId) async {
    final db = await _database.database;

    final result = await db.query(
      EntregaTable.tableName,
      where: '${EntregaTable.id} = ?',
      whereArgs: [entregaId],
      limit: 1,
    );

    if (result.isEmpty) return null;
    return EntregaLocalModel.fromMap(result.first);
  }

  Future<List<EntregaLocalModel>> getAllEmtregasPorStatus(String status) async {
    final db = await _database.database;

    final result = await db.query(
      EntregaTable.tableName,
      orderBy: '${EntregaTable.criadoEm} DESC',
      where: '${EntregaTable.status} = ?',
      whereArgs: [status],
    );

    return result.map(EntregaLocalModel.fromMap).toList();
  }

  Future<List<EntregaLocalModel>> getAllEntregasPorCliente(String clienteId) async {
    final db = await _database.database;

    final result = await db.query(
      EntregaTable.tableName,
      orderBy: '${EntregaTable.criadoEm} DESC',
      where: '${EntregaTable.clienteId} = ?',
      whereArgs: [clienteId],
    );

    return result.map((map) => EntregaLocalModel.fromMap(map)).toList();
  }
}
