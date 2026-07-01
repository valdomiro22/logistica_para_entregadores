import 'package:logistica_entregador/features/cliente/data/models/cliente_local_model.dart';

abstract class ClienteLocalDataSource {
  Future<void> insert(ClienteLocalModel cliente);

  Future<void> update(ClienteLocalModel cliente);

  Future<void> delete(ClienteLocalModel cliente);

  Future<List<ClienteLocalModel>> getAll();

  Future<ClienteLocalModel?> getOneById(String clienteId);
}
