import 'package:logistica_entregador/features/endereco/domain/entities/endereco_entity.dart';
import 'package:logistica_entregador/features/endereco/domain/providers/endereco_domain_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'lista_enderecos_do_cliente_notifier.g.dart';


@riverpod
class ListaEnderecosDoClienteNotifier extends _$ListaEnderecosDoClienteNotifier {
  @override
  Future<List<EnderecoEntity>> build(String clienteId) => _buscarEnderecos(clienteId);

  Future<List<EnderecoEntity>> _buscarEnderecos(String clienteId) async {
    final useCase = ref.read(getAllEnderecosUseCaseProvider);
    final result = await useCase();

    return result.fold(
        (failure) => throw Exception(failure),
        (listaEnderecos) => listaEnderecos,
    );
  }

  Future<void> deletarEndereco(EnderecoEntity endereco) async {
    final listaAnterior = state.value ?? [];

    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final useCase = ref.read(deleteOneEnderecoUseCaseProvider);
      final result = await useCase(endereco);

      return result.fold(
        (failure) => throw Exception(failure),
        (_) => listaAnterior.where((item) => item.id != endereco.id).toList(),
      );
    });
  }

  Future<void> recarregar(String clienteId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _buscarEnderecos(clienteId));
  }
}
