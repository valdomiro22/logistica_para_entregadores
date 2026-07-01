import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logistica_entregador/features/entrega/domain/entities/status_entrega.dart';
import 'package:logistica_entregador/features/entrega/domain/providers/entrega_domain_providers.dart';
import 'package:logistica_entregador/features/entrega/domain/usecases/update_entrega_use_case.dart';
import 'package:logistica_entregador/features/entrega/presentation/screens/listarentregasporcliente/lista_entregas_por_cliente_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'editar_entrega_notifier.freezed.dart';

part 'editar_entrega_notifier.g.dart';

@riverpod
class EditarEntregaNotifier extends _$EditarEntregaNotifier {
  @override
  EditarEntregaState build() => EditarEntregaState.inicial();

  void buscarEntrega(String entregaId) async {
    final useCase = ref.read(getOneEntregaUseCaseProvider);
    final result = await useCase(entregaId);

    result.fold(
      (failure) => state = state.copyWith(isLoading: false, geralErro: failure.message),
      (entrega) {
        state = state.copyWith(
          id: entrega.id,
          clienteId: entrega.clienteId,
          dataEntrega: entrega.dataEntrega,
          observacao: entrega.observacao,
          criadoEm: entrega.criadoEm,
          status: entrega.status,
        );
      }
    );
  }

  void onClienteIdChanged(String value) {
    state = state.copyWith(
      clienteId: value,
      clienteIdErro: null,
      geralErro: null,
      isSuccess: false,
    );
  }

  void onDataEntregaChanged(DateTime? value) {
    state = state.copyWith(
      dataEntrega: value,
      dataEntregaErro: null,
      geralErro: null,
      isSuccess: false,
    );
  }

  Future<void> editarEntrega() async {
    if (!_isCamposValidos()) return;

    final param = UpdateEntregaParams(id: state.id,
        clienteId: state.clienteId,
        dataEntrega: state.dataEntrega ?? DateTime.now(),
        criadoEm: state.criadoEm ?? DateTime.now(),
        status: state.status ?? StatusEntrega.pendente,
    );

    final useCase = ref.read(updateEntregaUseCaseProvider);
    final result = await useCase(param);
    result.fold(
          (failure) =>
          state.copyWith(isLoading: false, geralErro: failure.message, isSuccess: false),
          (_) {
        ref.invalidate(listaEntregasPorClienteProvider);
        state = state.copyWith(isLoading: false, isSuccess: true);
      },
    );
  }

  bool _isCamposValidos() {
    bool validos = true;
    String? clienteIdErro;

    if (state.clienteId
        .trim()
        .isEmpty) {
      validos = false;
      clienteIdErro = 'Digite o clienteId';
    }

    state = state.copyWith(clienteIdErro: clienteIdErro, geralErro: null);

    return validos;
  }

  void limpar() => state = EditarEntregaState.inicial();
}

@freezed
sealed class EditarEntregaState with _$EditarEntregaState {
  const factory EditarEntregaState({
    @Default('') String id,
    @Default('') String clienteId,
    DateTime? dataEntrega,
    String? observacao,
    DateTime? criadoEm,
    StatusEntrega? status,

    String? clienteIdErro,
    String? geralErro,
    String? dataEntregaErro,
    String? observacaoErro,
    String? criadoEmErro,

    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool camposValidos,
  }) = _EditarEntregaState;

  factory EditarEntregaState.inicial() => const EditarEntregaState();
}
