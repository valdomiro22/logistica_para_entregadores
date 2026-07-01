import 'package:logistica_entregador/core/database/app_database.dart';
import 'package:logistica_entregador/features/endereco/data/database/endereco_table.dart';
import 'package:logistica_entregador/features/endereco/data/models/endereco_local_model.dart';
import 'package:sqflite/sqflite.dart';

class EnderecoDao {
  final AppDatabase _database;

  EnderecoDao(this._database);

  Future<void> insert(EnderecoLocalModel endereco) async {
    final db = await _database.database;

    await db.insert(
      EnderecoTable.tableName,
      endereco.toMap(),
      conflictAlgorithm: ConflictAlgorithm.abort,
    );
  }

  Future<void> update(EnderecoLocalModel endereco) async {
    final db = await _database.database;

    await db.update(
      EnderecoTable.tableName,
      endereco.toMap(),
      where: '${EnderecoTable.id} = ?',
      whereArgs: [endereco.id],
    );
  }

  Future<void> delete(EnderecoLocalModel endereco) async {
    final db = await _database.database;

    await db.delete(
      EnderecoTable.tableName,
      where: '${EnderecoTable.id} = ?',
      whereArgs: [endereco.id],
    );
  }

  Future<List<EnderecoLocalModel>> getAll() async {
    final db = await _database.database;

    final result = await db.query(
      EnderecoTable.tableName,
      orderBy: '${EnderecoTable.criadoEm} DESC',
    );

    return result.map(EnderecoLocalModel.fromMap).toList();
  }

  Future<EnderecoLocalModel?> getOneById(String enderecoId) async {
    final db = await _database.database;

    final result = await db.query(
      EnderecoTable.tableName,
      where: '${EnderecoTable.id} = ?',
      whereArgs: [enderecoId],
      limit: 1,
    );

    if (result.isEmpty) return null;
    return EnderecoLocalModel.fromMap(result.first);
  }

  Future<List<EnderecoLocalModel>> getEnderecosOfCliente(String clienteId) async {
    final db = await _database.database;

    final result = await db.query(
      EnderecoTable.tableName,
      where: '${EnderecoTable.clienteId} = ?',
      whereArgs: [clienteId],
    );

    return result.map(EnderecoLocalModel.fromMap).toList();
  }
}
