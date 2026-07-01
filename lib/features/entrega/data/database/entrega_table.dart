class EntregaTable {
  static const String tableName = 'entrega';

  static const String id = 'id';
  static const String clienteId = 'cliente_id';
  static const String dataEntrega = 'data_entrega';
  static const String status = 'status';
  static const String observacao = 'observacao';
  static const String criadoEm = 'criado_em';
  static const String concluidoEm = 'concluido_em';
  static const String editadoEm = 'editado_em';

  static const String createTable = '''
    CREATE TABLE $tableName (
      $id TEXT PRIMARY KEY,
      $clienteId TEXT NOT NULL,
      $dataEntrega INTEGER NOT NULL,
      $status TEXT NOT NULL,
      $observacao TEXT,
      $criadoEm INTEGER NOT NULL,
      $editadoEm INTEGER,
      $concluidoEm INTEGER
    )
  ''';
}