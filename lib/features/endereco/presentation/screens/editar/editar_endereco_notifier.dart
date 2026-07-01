
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logistica_entregador/features/endereco/domain/providers/endereco_domain_providers.dart';
import 'package:logistica_entregador/features/endereco/domain/usecases/update_endereco_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../listar/lista_enderecos_do_cliente_notifier.dart';

part 'editar_endereco_notifier.freezed.dart';

part 'editar_endereco_notifier.g.dart';

@riverpod
class EditarEnderecoNotifier extends _$EditarEnderecoNotifier {
  @override
  EditarEnderecoState build() => EditarEnderecoState.inicial();

  Future<void> buscarEndereco(String enderecoId) async {
    final useCase = ref.read(getOneEnderecoUseCaseProvider);
    final result = await useCase(enderecoId);

    result.fold((failure) => state = state.copyWith(isLoading: false, geralErro: failure.message), (
      endereco,
    ) {
      state = state.copyWith(
        id: endereco.id,
        nome: endereco.nome,
        clienteId: endereco.clienteId,
        rua: endereco.rua,
        numero: endereco.numero,
        bairro: endereco.bairro,
        cidade: endereco.cidade,
        estado: endereco.estado,
        cep: endereco.cep,
        criadoEm: endereco.criadoEm,
      );
    });
  }

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

  Future<void> editarEndereco() async {
    if (!_isCamposValidos()) return;

    final params = UpdateEnderecoParams(
      id: state.id,
      nome: state.nome,
      clienteId: state.clienteId,
      rua: state.rua,
      numero: state.numero,
      bairro: state.bairro,
      cidade: state.cidade,
      estado: state.estado,
      cep: state.cep,
      criadoEm: state.criadoEm ?? DateTime.now(),
    );

    final useCase = ref.read(updateEnderecoUseCaseProvider);
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
    String? clienteIdErro;
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

    if (state.clienteId.trim().isEmpty) {
      validos = false;
      clienteIdErro = 'Selecione um cliente';
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
      cepErro = 'Digite o cep';
    }

    state = state.copyWith(
      nomeErro: nomeErro,
      clienteIdErro: clienteIdErro,
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

  void limpar() => state = EditarEnderecoState.inicial();
}

@freezed
sealed class EditarEnderecoState with _$EditarEnderecoState {
  const factory EditarEnderecoState({
    @Default('') String id,
    @Default('') String nome,
    @Default('') String clienteId,
    @Default('') String rua,
    @Default('') String numero,
    @Default('') String bairro,
    @Default('') String cidade,
    @Default('') String estado,
    @Default('') String cep,
    DateTime? criadoEm,

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
  }) = _EditarEnderecoState;

  factory EditarEnderecoState.inicial() => const EditarEnderecoState();
}
