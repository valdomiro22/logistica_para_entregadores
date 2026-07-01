import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logistica_entregador/features/cliente/domain/providers/cliente_domain_providers.dart';
import 'package:logistica_entregador/features/cliente/domain/usecases/update_cliente_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../listar/lista_clientes_notifier.dart';

part 'editar_cliente_notifier.freezed.dart';

part 'editar_cliente_notifier.g.dart';

@riverpod
class EditarClienteNotifier extends _$EditarClienteNotifier {
  @override
  EditarClienteState build() => EditarClienteState.inicial();

  Future<void> buscarCliente(String clienteId) async {
    final useCase = ref.read(getOneClienteUseCaseProvider);
    final result = await useCase(clienteId);

    result.fold((failure) => state = state.copyWith(isLoading: false, geralErro: failure.message), (
      cliente,
    ) {
      state = state.copyWith(
        id: cliente.id,
        nome: cliente.nome,
        telefone: cliente.telefone,
        email: cliente.email,
        criadoEm: cliente.editadoEm,
      );
    });
  }

  void onNomeChanged(String value) {
    state = state.copyWith(nome: value, nomeErro: null, geralErro: null, isSuccess: false);
  }

  void onTelefoneChanged(String value) {
    state = state.copyWith(telefone: value, telefoneErro: null, geralErro: null, isSuccess: false);
  }

  void onEmailChanged(String value) {
    state = state.copyWith(email: value, emailErro: null, geralErro: null, isSuccess: false);
  }

  void onObservacaoChanged(String value) {
    state = state.copyWith(observacao: value, geralErro: null, isSuccess: false);
  }

  Future<void> editarCliente() async {
    if (!_isCamposValidos()) return;

    final params = UpdateClienteParams(
      id: state.id,
      nome: state.nome,
      telefone: state.telefone,
      email: state.email,
      observacao: state.observacao,
      criadoEm: state.criadoEm ?? DateTime.now(),
    );

    final useCase = ref.read(updateClienteUseCaseProvider);
    final result = await useCase(params);
    result.fold(
      (failure) => state.copyWith(isLoading: false, geralErro: failure.message, isSuccess: false),
      (_) {
        ref.invalidate(listaClientesProvider);
        state = state.copyWith(isLoading: false, isSuccess: true);
      },
    );
  }

  bool _isCamposValidos() {
    bool validos = true;
    String? nomeErro;
    String? telefoneErro;
    String? emailErro;

    if (state.nome.trim().isEmpty) {
      validos = false;
      nomeErro = 'Digite o nome';
    }

    if (state.telefone.trim().isEmpty) {
      validos = false;
      telefoneErro = 'Digite a quantidade';
    }

    if (state.email.trim().isEmpty) {
      validos = false;
      emailErro = 'Informe o estoque mínimo para este produto';
    }

    state = state.copyWith(
      nomeErro: nomeErro,
      telefoneErro: telefoneErro,
      emailErro: emailErro,
      geralErro: null,
    );

    return validos;
  }

  void limpar() => state = EditarClienteState.inicial();
}

@freezed
sealed class EditarClienteState with _$EditarClienteState {
  const factory EditarClienteState({
    @Default('') String id,
    @Default('') String nome,
    @Default('') String telefone,
    @Default('') String email,
    String? observacao,
    DateTime? criadoEm,
    String? nomeErro,
    String? telefoneErro,
    String? emailErro,
    String? geralErro,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool camposValidos,
  }) = _EditarClienteState;

  factory EditarClienteState.inicial() => const EditarClienteState();
}
