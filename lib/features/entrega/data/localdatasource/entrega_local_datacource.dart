import 'package:logistica_entregador/features/entrega/data/models/entrega_local_model.dart';

abstract class EntregaLocalDatacource {
  Future<void> insert(EntregaLocalModel entrega);

  Future<void> update(EntregaLocalModel entrega);

  Future<void> delete(EntregaLocalModel entrega);

  Future<List<EntregaLocalModel>> getAll();

  Future<EntregaLocalModel?> getOneById(String entregaId);

  Future<List<EntregaLocalModel>> getAllEmtregasPorStatus(String status);

  Future<List<EntregaLocalModel>> getAllEmtregasPorPorCliente(String clienteId);
}
