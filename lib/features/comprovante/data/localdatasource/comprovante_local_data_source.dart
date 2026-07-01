import 'package:logistica_entregador/features/comprovante/data/models/comprovante_local_model.dart';

abstract class ComprovanteLocalDataSource {
  Future<void> insert(ComprovanteLocalModel comprovante);

  Future<void> update(ComprovanteLocalModel comprovante);

  Future<void> delete(ComprovanteLocalModel comprovante);

  Future<List<ComprovanteLocalModel>> getAll();

  Future<ComprovanteLocalModel?> getOneById(String comprovanteId);
}
