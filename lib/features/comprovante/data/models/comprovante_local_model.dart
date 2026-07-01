class ComprovanteLocalModel {
  final String id;
  final String entregaId;
  final String clienteId;
  final String foto;
  final String assinatura;
  final String? observacao;
  final DateTime criadoEm;
  final DateTime? editadoEm;

  ComprovanteLocalModel({
    required this.id,
    required this.entregaId,
    required this.clienteId,
    required this.foto,
    required this.assinatura,
    this.observacao,
    required this.criadoEm,
    this.editadoEm,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'entrega_id': entregaId,
      'cliente_id': clienteId,
      'foto': foto,
      'assinatura': assinatura,
      'observacao': observacao,
      'criado_em': criadoEm.millisecondsSinceEpoch,
      'editado_em': editadoEm?.millisecondsSinceEpoch,
    };
  }

  factory ComprovanteLocalModel.fromMap(Map<String, dynamic> map) {
    return ComprovanteLocalModel(
      id: map['id'] as String,
      entregaId: map['entrega_id'] as String,
      clienteId: map['cliente_id'] as String,
      foto: map['foto'] as String,
      assinatura: map['assinatura'] as String,
      observacao: map['observacao'] as String,
      criadoEm: DateTime.fromMillisecondsSinceEpoch(map['criado_em'] as int),
      editadoEm: map['editado_em'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['editado_em'] as int)
          : null,
    );
  }

  ComprovanteLocalModel copyWith({
    String? id,
    String? entregaId,
    String? clienteId,
    String? foto,
    String? assinatura,
    String? observacao,
    DateTime? criadoEm,
    DateTime? editadoEm,
  }) {
    return ComprovanteLocalModel(
      id: id ?? this.id,
      entregaId: entregaId ?? this.entregaId,
      clienteId: clienteId ?? this.clienteId,
      foto: foto ?? this.foto,
      assinatura: assinatura ?? this.assinatura,
      observacao: observacao ?? this.observacao,
      criadoEm: criadoEm ?? this.criadoEm,
      editadoEm: editadoEm ?? this.editadoEm,
    );
  }

  @override
  String toString() {
    return 'ComprovanteLocalModel{'
        '\n id: $id,'
        '\n entregaId: $entregaId,'
        '\n clienteId: $clienteId,'
        '\n foto: $foto,'
        '\n assinatura: $assinatura,'
        '\n observacao: $observacao,'
        '\n criadoEm: $criadoEm,'
        '\n editadoEm: $editadoEm}';
  }
}
