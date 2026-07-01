// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_enderecos_do_cliente_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ListaEnderecosDoClienteNotifier)
final listaEnderecosDoClienteProvider =
    ListaEnderecosDoClienteNotifierFamily._();

final class ListaEnderecosDoClienteNotifierProvider
    extends
        $AsyncNotifierProvider<
          ListaEnderecosDoClienteNotifier,
          List<EnderecoEntity>
        > {
  ListaEnderecosDoClienteNotifierProvider._({
    required ListaEnderecosDoClienteNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'listaEnderecosDoClienteProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$listaEnderecosDoClienteNotifierHash();

  @override
  String toString() {
    return r'listaEnderecosDoClienteProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ListaEnderecosDoClienteNotifier create() => ListaEnderecosDoClienteNotifier();

  @override
  bool operator ==(Object other) {
    return other is ListaEnderecosDoClienteNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$listaEnderecosDoClienteNotifierHash() =>
    r'c9d501c0e093293f57a48ac67079eb857e3780ee';

final class ListaEnderecosDoClienteNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ListaEnderecosDoClienteNotifier,
          AsyncValue<List<EnderecoEntity>>,
          List<EnderecoEntity>,
          FutureOr<List<EnderecoEntity>>,
          String
        > {
  ListaEnderecosDoClienteNotifierFamily._()
    : super(
        retry: null,
        name: r'listaEnderecosDoClienteProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ListaEnderecosDoClienteNotifierProvider call(String clienteId) =>
      ListaEnderecosDoClienteNotifierProvider._(
        argument: clienteId,
        from: this,
      );

  @override
  String toString() => r'listaEnderecosDoClienteProvider';
}

abstract class _$ListaEnderecosDoClienteNotifier
    extends $AsyncNotifier<List<EnderecoEntity>> {
  late final _$args = ref.$arg as String;
  String get clienteId => _$args;

  FutureOr<List<EnderecoEntity>> build(String clienteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<EnderecoEntity>>, List<EnderecoEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<EnderecoEntity>>,
                List<EnderecoEntity>
              >,
              AsyncValue<List<EnderecoEntity>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
