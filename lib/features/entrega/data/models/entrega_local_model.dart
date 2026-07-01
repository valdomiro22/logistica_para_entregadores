import 'package:logistica_entregador/features/entrega/domain/entities/status_entrega.dart';

class EntregaLocalModel {
  final String id;
  final String clienteId;
  final DateTime dataEntrega;
  final StatusEntrega status;
  final String? observacao;
  final DateTime? concluidoEm;
  final DateTime criadoEm;
  final DateTime? editadoEm;

  EntregaLocalModel({
    required this.id,
    required this.clienteId,
    required this.dataEntrega,
    required this.status,
    this.observacao,
    this.concluidoEm,
    required this.criadoEm,
    this.editadoEm,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "cliente_id": clienteId,
      "data_entrega": dataEntrega.toIso8601String(),
      "status": status.text,
      "observacao": observacao,
      "concluido_em": concluidoEm?.millisecondsSinceEpoch,
      "criado_em": criadoEm.millisecondsSinceEpoch,
      "editado_em": editadoEm?.millisecondsSinceEpoch,
    };
  }

  factory EntregaLocalModel.fromMap(Map<String, dynamic> map) {
    return EntregaLocalModel(
      id: map["id"],
      clienteId: map["cliente_id"],
      dataEntrega: DateTime.parse(map["data_entrega"]),
      status: StatusEntrega.fromText(map["status"]),
      observacao: map["observacao"],
      criadoEm: DateTime.fromMillisecondsSinceEpoch(map['criado_em'] as int),

      concluidoEm: map['concluido_em'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['concluido_em'] as int)
          : null,

      editadoEm: map['editado_em'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['editado_em'] as int)
          : null,
    );
  }

  EntregaLocalModel copyWith({
    String? id,
    String? clienteId,
    DateTime? dataEntrega,
    StatusEntrega? status,
    String? observacao,
    DateTime? criadoEm,
    DateTime? concluidoEm,
    DateTime? editadoEm,
  }) {
    return EntregaLocalModel(
      id: id ?? this.id,
      clienteId: clienteId ?? this.clienteId,
      dataEntrega: dataEntrega ?? this.dataEntrega,
      status: status ?? this.status,
      observacao: observacao ?? this.observacao,
      criadoEm: criadoEm ?? this.criadoEm,
      concluidoEm: concluidoEm ?? this.concluidoEm,
      editadoEm: editadoEm ?? this.editadoEm,
    );
  }

  @override
  String toString() {
    return 'EntregaLocalModel{id: $id, clienteId: $clienteId, dataEntrega: $dataEntrega, status: $status, observacao: $observacao, concluidoEm: $concluidoEm, criadoEm: $criadoEm, editadoEm: $editadoEm}';
  }
}
