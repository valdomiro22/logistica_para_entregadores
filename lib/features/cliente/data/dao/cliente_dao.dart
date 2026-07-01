import 'package:logistica_entregador/core/database/app_database.dart';
import 'package:logistica_entregador/features/cliente/data/database/cliente_teble.dart';
import 'package:logistica_entregador/features/cliente/data/models/cliente_local_model.dart';
import 'package:sqflite/sqflite.dart';

class ClienteDao {
  final AppDatabase _database;

  ClienteDao(this._database);

  Future<void> insert(ClienteLocalModel cliente) async {
    final db = await _database.database;

    await db.insert(
      ClienteTeble.tableName,
      cliente.toMap(),
      conflictAlgorithm: ConflictAlgorithm.abort,
    );
  }

  Future<void> update(ClienteLocalModel cliente) async {
    final db = await _database.database;

    await db.update(
      ClienteTeble.tableName,
      cliente.toMap(),
      where: '${ClienteTeble.id} = ?',
      whereArgs: [cliente.id],
    );
  }

  Future<void> delete(ClienteLocalModel cliente) async {
    final db = await _database.database;

    await db.delete(
      ClienteTeble.tableName,
      where: '${ClienteTeble.id} = ?',
      whereArgs: [cliente.id],
    );
  }

  Future<List<ClienteLocalModel>> getAll() async {
    final db = await _database.database;

    final result = await db.query(ClienteTeble.tableName, orderBy: '${ClienteTeble.criadoEm} ASC');
    return result.map(ClienteLocalModel.fromMap).toList();
  }

  Future<ClienteLocalModel?> getOneById(String clienteId) async {
    final db = await _database.database;

    final result = await db.query(
      ClienteTeble.tableName,
      where: '${ClienteTeble.id} = ?',
      whereArgs: [clienteId],
      limit: 1,
    );

    if (result.isEmpty) return null;
    return ClienteLocalModel.fromMap(result.first);
  }
}
