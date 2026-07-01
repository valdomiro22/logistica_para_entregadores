class ClienteTeble {
  static const String tableName = 'cliente';

  static const String id = 'id';
  static const String nome = 'nome';
  static const String telefone = 'telefone';
  static const String email = 'email';
  static const String observacao = 'observacao';
  static const String criadoEm = 'criado_em';
  static const String editadoEm = 'editado_em';

  static const String createTable = '''
    CREATE TABLE $tableName (
      $id TEXT PRIMARY KEY,
      $nome TEXT NOT NULL,
      $telefone TEXT NOT NULL,
      $email TEXT NOT NULL,
      $observacao TEXT,
      $criadoEm INTEGER NOT NULL,
      $editadoEm INTEGER
    )
  ''';
}
