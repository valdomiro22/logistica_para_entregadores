import 'package:logistica_entregador/features/endereco/data/models/endereco_local_model.dart';
import 'package:logistica_entregador/features/endereco/domain/entities/endereco_entity.dart';

extension EnderecoLocalModelMapper on EnderecoLocalModel {
  EnderecoEntity toEntity() {
    return EnderecoEntity(
      id: id,
      nome: nome,
      clienteId: clienteId,
      rua: rua,
      numero: numero,
      bairro: bairro,
      cidade: cidade,
      estado: estado,
      cep: cep,
      criadoEm: criadoEm,
      editadoEm: editadoEm,
    );
  }
}

extension EnderecoEntityMapper on EnderecoEntity {
  EnderecoLocalModel toLocalModel() {
    return EnderecoLocalModel(
      id: id,
      nome: nome,
      clienteId: clienteId,
      rua: rua,
      numero: numero,
      bairro: bairro,
      cidade: cidade,
      estado: estado,
      cep: cep,
      criadoEm: criadoEm,
      editadoEm: editadoEm,
    );
  }
}
