class TableComprovante {
  static const String tableName = 'comprovante';

  static const String id = 'id';
  static const String entregaId = 'entrega_id';
  static const String clienteId = 'cliente_id';
  static const String foto = 'foto';
  static const String assinatura = 'assinatura';
  static const String observacao = 'observacao';
  static const String criadoEm = 'criado_em';
  static const String editadoEm = 'editado_em';

  static const String createTable = '''
    CREATE TABLE $tableName (
      $id TEXT PRIMARY KEY,
      $entregaId TEXT NOT NULL,
      $clienteId TEXT NOT NULL,
      $foto TEXT NOT NULL,
      $assinatura TEXT NOT NULL,
      $observacao TEXT,
      $criadoEm INTEGER NOT NULL,
      $editadoEm INTEGER NULL
    )
  ''';
}