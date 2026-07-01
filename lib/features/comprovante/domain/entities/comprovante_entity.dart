class ComprovanteEntity {
  final String id;
  final String entregaId;
  final String clienteId;
  final String foto;
  final String assinatura;
  final String? observacao;
  final DateTime criadoEm;
  final DateTime? editadoEm;

  ComprovanteEntity({
    required this.id,
    required this.entregaId,
    required this.clienteId,
    required this.foto,
    required this.assinatura,
    this.observacao,
    required this.criadoEm,
    this.editadoEm,
  });

  ComprovanteEntity copyWith({
    String? id,
    String? entregaId,
    String? clienteId,
    String? foto,
    String? assinatura,
    String? observacao,
    DateTime? criadoEm,
    DateTime? editadoEm,
  }) {
    return ComprovanteEntity(
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
}
