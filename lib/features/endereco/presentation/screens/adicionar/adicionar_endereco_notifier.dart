
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logistica_entregador/features/endereco/domain/providers/endereco_domain_providers.dart';
import 'package:logistica_entregador/features/endereco/domain/usecases/insert_endereco_use_case.dart';
import 'package:logistica_entregador/features/endereco/presentation/screens/listar/lista_enderecos_do_cliente_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'adicionar_endereco_notifier.freezed.dart';

part 'adicionar_endereco_notifier.g.dart';

@riverpod
class AdicionarEnderecoNotifier extends _$AdicionarEnderecoNotifier {
  @override
  AdicionarEnderecoState build() => AdicionarEnderecoState.inicial();

  void onNomeChanged(String value) {
    state = state.copyWith(nome: value, nomeErro: null, geralErro: null, isSuccess: false);
  }

  void onClienteIdChanged(String value) {
    state = state.copyWith(
      clienteId: value,
      clienteIdErro: null,
      geralErro: null,
      isSuccess: false,
    );
  }

  void onRuaChanged(String value) {
    state = state.copyWith(rua: value, ruaErro: null, geralErro: null, isSuccess: false);
  }

  void onNumeroChanged(String value) {
    state = state.copyWith(numero: value, numeroErro: null, geralErro: null, isSuccess: false);
  }

  void onBairroChanged(String value) {
    state = state.copyWith(bairro: value, bairroErro: null, geralErro: null, isSuccess: false);
  }

  void onCidadeChanged(String value) {
    state = state.copyWith(cidade: value, cidadeErro: null, geralErro: null, isSuccess: false);
  }

  void onEstadoChanged(String value) {
    state = state.copyWith(estado: value, estadoErro: null, geralErro: null, isSuccess: false);
  }

  void onCEPChanged(String value) {
    state = state.copyWith(cep: value, cepErro: null, geralErro: null, isSuccess: false);
  }

  Future<void> adicionarEndereco() async {
    if (!_isCamposValidos()) return;

    final params = InsertEnderecoParams(
      nome: state.nome,
      clienteId: state.clienteId,
      rua: state.rua,
      numero: state.numero,
      bairro: state.bairro,
      cidade: state.cidade,
      estado: state.estado,
      cep: state.cep,
    );

    final useCase = ref.read(insertEnderecoUseCaseProvider);
    final result = await useCase(params);
    result.fold(
      (failure) => state.copyWith(isLoading: false, geralErro: failure.message, isSuccess: false),
      (_) {
        ref.invalidate(listaEnderecosDoClienteProvider);
        state = state.copyWith(isLoading: false, isSuccess: true);
      },
    );
  }

  bool _isCamposValidos() {
    bool validos = true;
    String? nomeErro;
    String? ruaErro;
    String? numeroErro;
    String? bairroErro;
    String? cidadeErro;
    String? estadoErro;
    String? cepErro;

    if (state.nome.trim().isEmpty) {
      validos = false;
      nomeErro = 'Digite o nome';
    }

    if (state.rua.trim().isEmpty) {
      validos = false;
      ruaErro = 'Digite o nome da rua';
    }

    if (state.numero.trim().isEmpty) {
      validos = false;
      numeroErro = 'Digite o número';
    }

    if (state.bairro.trim().isEmpty) {
      validos = false;
      bairroErro = 'Digite o nome do bairro';
    }

    if (state.cidade.trim().isEmpty) {
      validos = false;
      cidadeErro = 'Digite o nome da cidade';
    }

    if (state.estado.trim().isEmpty) {
      validos = false;
      estadoErro = 'Digite o nome do estado';
    }

    if (state.cep.trim().isEmpty) {
      validos = false;
      nomeErro = 'Digite o cep';
    }

    state = state.copyWith(
      nomeErro: nomeErro,
      ruaErro: ruaErro,
      numeroErro: numeroErro,
      bairroErro: bairroErro,
      cidadeErro: cidadeErro,
      estadoErro: estadoErro,
      cepErro: cepErro,
      geralErro: null,
    );

    return validos;
  }

  void limpar() => state = AdicionarEnderecoState.inicial();
}

@freezed
sealed class AdicionarEnderecoState with _$AdicionarEnderecoState {
  const factory AdicionarEnderecoState({
    @Default('') String nome,
    @Default('') String clienteId,
    @Default('') String rua,
    @Default('') String numero,
    @Default('') String bairro,
    @Default('') String cidade,
    @Default('') String estado,
    @Default('') String cep,

    String? nomeErro,
    String? clienteIdErro,
    String? ruaErro,
    String? numeroErro,
    String? bairroErro,
    String? cidadeErro,
    String? estadoErro,
    String? cepErro,
    String? geralErro,

    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool camposValidos,
  }) = _AdicionarEnderecoState;

  factory AdicionarEnderecoState.inicial() => const AdicionarEnderecoState();
}
