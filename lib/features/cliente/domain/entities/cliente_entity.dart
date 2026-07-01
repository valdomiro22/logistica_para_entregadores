
class ClienteEntity {
  final String id;
  final String nome;
  final String telefone;
  final String email;
  final String? observacao;
  final DateTime criadoEm;
  final DateTime? editadoEm;

  ClienteEntity({
    required this.id,
    required this.nome,
    required this.telefone,
    required this.email,
    this.observacao,
    required this.criadoEm,
    this.editadoEm,
  });

  ClienteEntity copyWith({
    String? id,
    String? nome,
    String? telefone,
    String? email,
    String? observacao,
    DateTime? criadoEm,
    DateTime? editadoEm,
  }) {
    return ClienteEntity(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      telefone: telefone ?? this.telefone,
      email: email ?? this.email,
      observacao: observacao ?? this.observacao,
      criadoEm: criadoEm ?? this.criadoEm,
      editadoEm: editadoEm ?? this.editadoEm,
    );
  }

  @override
  String toString() {
    return 'ClienteEntity('
        '\nid: $id,'
        '\nnome: $nome,'
        '\ntelefone: $telefone,'
        '\nemail: $email,'
        '\nobservacao: $observacao,'
        '\ncriadoEm: $criadoEm,'
        '\neditadoEm: $editadoEm,'
        ')';
  }
}
