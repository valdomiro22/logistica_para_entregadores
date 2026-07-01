class EnderecoTable {
  static const String tableName = 'endereco';

  static const String id = 'id';
  static const String nome = 'nome';
  static const String clienteId = 'cliente_id';
  static const String rua = 'rua';
  static const String numero = 'numero';
  static const String bairro = 'bairro';
  static const String cidade = 'cidade';
  static const String estado = 'estado';
  static const String cep = 'cep';
  static const String criadoEm = 'criado_em';
  static const String editadoEm = 'editado_em';

  static const String createTable = '''
    CREATE TABLE $tableName (
      $id TEXT PRIMARY KEY,
      $clienteId TEXT NOT NULL,
      $nome TEXT NOT NULL,
      $rua TEXT NOT NULL,
      $numero TEXT NOT NULL,
      $bairro TEXT NOT NULL,
      $cidade TEXT NOT NULL,
      $estado TEXT NOT NULL,
      $cep TEXT NOT NULL,
      $criadoEm INTEGER NOT NULL,
      $editadoEm INTEGER
    )
  ''';
}
