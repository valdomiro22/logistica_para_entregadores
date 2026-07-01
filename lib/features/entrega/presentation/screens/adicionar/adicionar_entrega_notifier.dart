
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logistica_entregador/features/entrega/domain/providers/entrega_domain_providers.dart';
import 'package:logistica_entregador/features/entrega/domain/usecases/insert_entrega_use_case.dart';
import 'package:logistica_entregador/features/entrega/presentation/screens/listarentregasporcliente/lista_entregas_por_cliente_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'adicionar_entrega_notifier.freezed.dart';

part 'adicionar_entrega_notifier.g.dart';

@riverpod
class AdicionarEntregaNotifier extends _$AdicionarEntregaNotifier {
  @override
  AdicionarEntregaState build() => AdicionarEntregaState.inicial();

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

  Future<void> adicionarEntrega() async {
    if (!_isCamposValidos()) return;

    final params = InsertEntregaParams(clienteId: state.clienteId, dataEntrega: state.dataEntrega!);

    final useCase = ref.read(insertEntregaUseCaseProvider);
    final result = await useCase(params);
    result.fold(
      (failure) => state.copyWith(isLoading: false, geralErro: failure.message, isSuccess: false),
      (_) {
        ref.invalidate(listaEntregasPorClienteProvider);
        state = state.copyWith(isLoading: false, isSuccess: true);
      },
    );
  }

  bool _isCamposValidos() {
    bool validos = true;
    String? clienteIdErro;
    String? dataEntregaErro;

    if (state.clienteId.trim().isEmpty) {
      validos = false;
      clienteIdErro = 'Digite o clienteId';
    }

    if (state.dataEntrega == null) {
      validos = false;
      dataEntregaErro = 'Selecione a data de entrega';
    }

    state = state.copyWith(
      clienteIdErro: clienteIdErro,
      dataEntregaErro: dataEntregaErro,
      geralErro: null,
    );

    return validos;
  }

  void limpar() => state = AdicionarEntregaState.inicial();
}

@freezed
sealed class AdicionarEntregaState with _$AdicionarEntregaState {
  const factory AdicionarEntregaState({
    @Default('') String clienteId,
    String? observacao,
    DateTime? dataEntrega,

    String? clienteIdErro,
    String? dataEntregaErro,
    String? geralErro,

    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool camposValidos,
  }) = _AdicionarEntregaState;

  factory AdicionarEntregaState.inicial() => const AdicionarEntregaState();
}
