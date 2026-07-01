import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logistica_entregador/features/comprovante/domain/providers/comprovante_domain_providers.dart';
import 'package:logistica_entregador/features/comprovante/domain/usecases/update_comprovante_use_case.dart';
import 'package:logistica_entregador/features/comprovante/presentation/screens/listar/lista_comprovantes_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'editar_comprovante_notifier.freezed.dart';
part 'editar_comprovante_notifier.g.dart';

@riverpod
class EditarComprovanteNotifier extends _$EditarComprovanteNotifier {
  @override
  EditarComprovanteState build() => EditarComprovanteState.inicial();

  Future<void> buscarComprovante(String comprovanteId) async {
    final useCase = ref.read(getOneComprovanteUseCaseProvider);
    final result = await useCase(comprovanteId);

    result.fold(
        (failure) => state = state.copyWith(isLoading: false, geralErro: failure.message, isSuccess: false),
        (comprovante) {
            state = state.copyWith(
            id: comprovante.id ,
            entregaId: comprovante.entregaId ,
            clienteId: comprovante.clienteId ,
            foto: comprovante.foto ,
            assinatura: comprovante.assinatura ,
            observacao: comprovante.observacao ?? '',
            criadoEm: comprovante.criadoEm ,
          );
        }
    );
  }

  void onEntregaIdChanged(String value) {
    state = state.copyWith(entregaId: value, entregaIdErro: null, geralErro: null, isSuccess: false);
  }

  void onClienteIdChanged(String value) {
    state = state.copyWith(clienteId: value, clienteIdErro: null, geralErro: null, isSuccess: false);
  }

  void onFotoChanged(String value) {
    state = state.copyWith(foto: value, fotoErro: null, geralErro: null, isSuccess: false);
  }

  void onAssinaturaChanged(String value) {
    state = state.copyWith(assinatura: value, assinaturaErro: null, geralErro: null, isSuccess: false);
  }

  void onObservacaoChanged(String value) {
    state = state.copyWith(observacao: value, observacaoErro: null, geralErro: null, isSuccess: false);
  }

  Future<void> editarComprovante() async {
    state = state.copyWith(entregaId: 'asfddso', clienteId: 'salfd');

    if (!_isCamposValidos()) return;

    final params = UpdateComprovanteParams(
      id: state.id,
      entregaId: state.entregaId,
      clienteId: state.clienteId,
      foto: state.foto,
      assinatura: state.assinatura,
      observacao: state.observacao,
      criadoEm: state.criadoEm ?? DateTime.now(),
    );

    final useCase = ref.read(updateComprovanteUseCaseProvider);
    final result = await useCase(params);
    result.fold(
      (failure) => state.copyWith(isLoading: false, geralErro: failure.message, isSuccess: false),
      (_) {
        ref.invalidate(listaComprovantesProvider);
        state = state.copyWith(isLoading: false, isSuccess: true);
      },
    );
  }

  bool _isCamposValidos() {
    bool validos = true;
    String? entregaIdErro;
    String? clienteIdErro;
    String? fotoErro;
    String? assinaturaErro;

    if (state.entregaId.trim().isEmpty) {
      validos = false;
      entregaIdErro = 'Selecione a entrega';
    }

    if (state.clienteId.trim().isEmpty) {
      validos = false;
      clienteIdErro = 'Selecione o cliente';
    }

    if (state.assinatura.trim().isEmpty) {
      validos = false;
      assinaturaErro = 'Insira a assinatura';
    }

    if (state.foto.trim().isEmpty) {
      validos = false;
      fotoErro = 'Insira a foto';
    }

    state = state.copyWith(
      entregaIdErro: entregaIdErro,
      clienteIdErro: clienteIdErro,
      fotoErro: fotoErro,
      assinaturaErro: assinaturaErro,
      geralErro: null,
    );

    return validos;
  }

  void limpar() => state = EditarComprovanteState.inicial();
}

@freezed
sealed class EditarComprovanteState with _$EditarComprovanteState {
  const factory EditarComprovanteState({
    @Default('') String id,
    @Default('') String entregaId,
    @Default('') String clienteId,
    @Default('') String foto,
    @Default('') String assinatura,
    @Default('') String observacao,

    DateTime? criadoEm,

    String? clienteIdErro,
    String? fotoErro,
    String? assinaturaErro,
    String? observacaoErro,
    String? entregaIdErro,
    String? geralErro,

    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool camposValidos,
  }) = _EditarComprovanteState;

  factory EditarComprovanteState.inicial() => const EditarComprovanteState();
}
