import 'package:logistica_entregador/features/endereco/data/models/endereco_local_model.dart';

class ClienteLocalModel {
  final String id;
  final String nome;
  final String email;
  final String telefone;
  final String? observacao;
  final DateTime criadoEm;
  final DateTime? editadoEm;

  ClienteLocalModel({
    required this.id,
    required this.nome,
    required this.email,
    required this.telefone,
    this.observacao,
    required this.criadoEm,
    this.editadoEm,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'telefone': telefone,
      'email': email,
      'observacao': observacao,
      'criado_em': criadoEm.millisecondsSinceEpoch,
      'editado_em': editadoEm?.millisecondsSinceEpoch,
    };
  }

  factory ClienteLocalModel.fromMap(Map<String, dynamic> map) {
    return ClienteLocalModel(
      id: map['id'] as String,
      nome: map['nome'] as String,
      telefone: map['telefone'] as String,
      email: map['email'] as String,
      observacao: map['observacao'] as String?,
      criadoEm: DateTime.fromMillisecondsSinceEpoch(map['criado_em'] as int),
      editadoEm: map['editado_em'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['editado_em'] as int)
          : null,
    );
  }

  ClienteLocalModel copyWith({
    String? id,
    String? nome,
    String? telefone,
    String? email,
    EnderecoLocalModel? endereco,
    String? observacao,
    DateTime? criadoEm,
    DateTime? editadoEm,
  }) {
    return ClienteLocalModel(
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
    return 'ClienteLocalModel('
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
