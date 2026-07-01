import 'package:logistica_entregador/features/comprovante/data/models/comprovante_local_model.dart';
import 'package:logistica_entregador/features/comprovante/domain/entities/comprovante_entity.dart';

extension ComprovanteLocalModelMapper on ComprovanteLocalModel {
  ComprovanteEntity toEntity() {
    return ComprovanteEntity(
      id: id,
      entregaId: entregaId,
      clienteId: clienteId,
      foto: foto,
      assinatura: assinatura,
      observacao: observacao,
      criadoEm: criadoEm,
      editadoEm: editadoEm,
    );
  }
}

extension ComprovanteEntityMapper on ComprovanteEntity {
  ComprovanteLocalModel toLocalModel() {
    return ComprovanteLocalModel(
      id: id,
      entregaId: entregaId,
      clienteId: clienteId,
      foto: foto,
      assinatura: assinatura,
      observacao: observacao,
      criadoEm: criadoEm,
      editadoEm: editadoEm,
    );
  }
}
