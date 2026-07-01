import 'package:logistica_entregador/features/endereco/data/models/endereco_local_model.dart';

abstract class EnderecoLocalDataSource {
  Future<void> insert(EnderecoLocalModel endereco);

  Future<void> update(EnderecoLocalModel endereco);

  Future<void> delete(EnderecoLocalModel endereco);

  Future<List<EnderecoLocalModel>> getAll();

  Future<EnderecoLocalModel?> getOneById(String enderecoId);

  Future<List<EnderecoLocalModel>> getEnderecosOfCliente(String clienteId);
}
