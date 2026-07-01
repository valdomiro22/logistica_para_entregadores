import 'package:logistica_entregador/features/cliente/data/models/cliente_local_model.dart';
import 'package:logistica_entregador/features/cliente/domain/entities/cliente_entity.dart';

extension ClienteLocalModelMapper on ClienteLocalModel {
  ClienteEntity toEntity() {
    return ClienteEntity(
      id: id,
      nome: nome,
      telefone: telefone,
      email: email,
      observacao: observacao,
      criadoEm: criadoEm,
      editadoEm: editadoEm,
    );
  }
}

extension ClienteEntityMapper on ClienteEntity {
  ClienteLocalModel toLocalModel() {
    return ClienteLocalModel(
      id: id,
      nome: nome,
      telefone: telefone,
      email: email,
      observacao: observacao,
      criadoEm: criadoEm,
      editadoEm: editadoEm,
    );
  }
}
