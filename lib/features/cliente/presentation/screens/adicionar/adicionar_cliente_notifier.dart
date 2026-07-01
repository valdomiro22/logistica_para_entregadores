import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logistica_entregador/features/cliente/domain/providers/cliente_domain_providers.dart';
import 'package:logistica_entregador/features/cliente/domain/usecases/insert_cliente_use_case.dart';
import 'package:logistica_entregador/features/cliente/presentation/screens/listar/lista_clientes_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'adicionar_cliente_notifier.freezed.dart';

part 'adicionar_cliente_notifier.g.dart';

@riverpod
class AdicionarClienteNotifier extends _$AdicionarClienteNotifier {
  @override
  AdicionarClienteState build() => AdicionarClienteState.inicial();

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

  Future<void> adicionarCliente() async {
    if (!_isCamposValidos()) return;

    final params = InsertClienteParams(
      nome: state.nome,
      telefone: state.telefone,
      email: state.email,
    );

    final useCase = ref.read(insertClienteUseCaseProvider);
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

  void limpar() => state = AdicionarClienteState.inicial();
}

@freezed
sealed class AdicionarClienteState with _$AdicionarClienteState {
  const factory AdicionarClienteState({
    @Default('') String nome,
    @Default('') String telefone,
    @Default('') String email,
    String? observacao,
    String? nomeErro,
    String? telefoneErro,
    String? emailErro,
    String? geralErro,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool camposValidos,
  }) = _AdicionarClienteState;

  factory AdicionarClienteState.inicial() => const AdicionarClienteState();
}
