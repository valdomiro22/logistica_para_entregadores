class EnderecoLocalModel {
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

  EnderecoLocalModel({
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

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'cliente_id': clienteId,
      'rua': rua,
      'numero': numero,
      'bairro': bairro,
      'cidade': cidade,
      'estado': estado,
      'cep': cep,
      'criado_em': criadoEm.millisecondsSinceEpoch,
      'editado_em': editadoEm?.millisecondsSinceEpoch,
    };
  }

  factory EnderecoLocalModel.fromMap(Map<String, dynamic> map) {
    return EnderecoLocalModel(
      id: map['id'] as String,
      nome: map['nome'] as String,
      clienteId: map['cliente_id'] as String,
      rua: map['rua'] as String,
      numero: map['numero'] as String,
      bairro: map['bairro'] as String,
      cidade: map['cidade'] as String,
      estado: map['estado'] as String,
      cep: map['cep'] as String,
      criadoEm: DateTime.fromMillisecondsSinceEpoch(map['criado_em'] as int),
      editadoEm: map['editado_em'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['editado_em'] as int)
          : null,
    );
  }

  EnderecoLocalModel copyWith({
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
    return EnderecoLocalModel(
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
    return 'EnderecoLocalModel('
        '\nid: $id,'
        '\nnome: $nome,'
        '\nclienteId: $clienteId,'
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
