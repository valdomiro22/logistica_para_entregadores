import 'package:logistica_entregador/features/entrega/data/models/entrega_local_model.dart';
import 'package:logistica_entregador/features/entrega/domain/entities/entrega_entity.dart';

extension EntregaLocalModelMapper on EntregaLocalModel {
  EntregaEntity toEntity() {
    return EntregaEntity(
      id: id,
      clienteId: clienteId,
      dataEntrega: dataEntrega,
      status: status,
      criadoEm: criadoEm,
      observacao: observacao,
      concluidoEm: concluidoEm,
      editadoEm: editadoEm,
    );
  }
}

extension EntregaEntityMapper on EntregaEntity {
  EntregaLocalModel toLocalModel() {
    return EntregaLocalModel(
      id: id,
      clienteId: clienteId,
      dataEntrega: dataEntrega,
      status: status,
      criadoEm: criadoEm,
      observacao: observacao,
      concluidoEm: concluidoEm,
      editadoEm: editadoEm,
    );
  }
}
