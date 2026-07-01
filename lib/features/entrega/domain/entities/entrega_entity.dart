import 'package:logistica_entregador/features/entrega/domain/entities/status_entrega.dart';

class EntregaEntity {
  final String id;
  final String clienteId;
  final DateTime dataEntrega;
  final StatusEntrega status;
  final String? observacao;
  final DateTime criadoEm;
  final DateTime? concluidoEm;
  final DateTime? editadoEm;

  EntregaEntity({
    required this.id,
    required this.clienteId,
    required this.dataEntrega,
    required this.status,
    this.observacao,
    required this.criadoEm,
    this.concluidoEm,
    this.editadoEm,
  });

  EntregaEntity copyWith({
    String? id,
    String? clienteId,
    DateTime? dataEntrega,
    StatusEntrega? status,
    String? observacao,
    DateTime? criadoEm,
    DateTime? concluidoEm,
    DateTime? editadoEm,
  }) {
    return EntregaEntity(
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
    return 'EntregaEntity{id: $id, clienteId: $clienteId, dataEntrega: $dataEntrega, status: $status, observacao: $observacao, criadoEm: $criadoEm, concluidoEm: $concluidoEm, editadoEm: $editadoEm}';
  }
}
