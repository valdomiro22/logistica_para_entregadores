class EnderecoEntity {
  final String id;
  final String nome;
  final String clienteId;
  final String rua;
  final String numero;
  final String bairro;
  final String cidade;
  final String estado;
  final String cep;
  final DateTime criadoEm;
  final DateTime? editadoEm;

  EnderecoEntity({
    required this.id,
    required this.nome,
    required this.clienteId,
    required this.rua,
    required this.numero,
    required this.bairro,
    required this.cidade,
    required this.estado,
    required this.cep,
    required this.criadoEm,
    this.editadoEm,
  });

  EnderecoEntity copyWith({
    String? id,
    String? nome,
    String? clienteId,
    String? rua,
    String? numero,
    String? bairro,
    String? cidade,
    String? estado,
    String? cep,
    DateTime? criadoEm,
    DateTime? editadoEm,
  }) {
    return EnderecoEntity(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      clienteId: clienteId ?? this.clienteId,
      rua: rua ?? this.rua,
      numero: numero ?? this.numero,
      bairro: bairro ?? this.bairro,
      cidade: cidade ?? this.cidade,
      estado: estado ?? this.estado,
      cep: cep ?? this.cep,
      criadoEm: criadoEm ?? this.criadoEm,
      editadoEm: editadoEm ?? this.editadoEm,
    );
  }

  @override
  String toString() {
    return 'EnderecoEntity('
        '\nid: $id,'
        '\nnome: $nome,'
        '\nlienteId: $clienteId'
        '\nrua: $rua,'
        '\nnumero: $numero,'
        '\nbairro: $bairro,'
        '\ncidade: $cidade,'
        '\nestado: $estado,'
        '\ncep: $cep,'
        '\ncriadoEm: $criadoEm,'
        '\neditadoEm: $editadoEm,'
        ')';
  }
}
