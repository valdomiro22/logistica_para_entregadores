// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_entregas_por_cliente_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ListaEntregasPorClienteNotifier)
final listaEntregasPorClienteProvider =
    ListaEntregasPorClienteNotifierFamily._();

final class ListaEntregasPorClienteNotifierProvider
    extends
        $AsyncNotifierProvider<
          ListaEntregasPorClienteNotifier,
          List<EntregaEntity>
        > {
  ListaEntregasPorClienteNotifierProvider._({
    required ListaEntregasPorClienteNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'listaEntregasPorClienteProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$listaEntregasPorClienteNotifierHash();

  @override
  String toString() {
    return r'listaEntregasPorClienteProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ListaEntregasPorClienteNotifier create() => ListaEntregasPorClienteNotifier();

  @override
  bool operator ==(Object other) {
    return other is ListaEntregasPorClienteNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$listaEntregasPorClienteNotifierHash() =>
    r'2e568859647e1e3b1eda28371a839a0671bfe2b4';

final class ListaEntregasPorClienteNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ListaEntregasPorClienteNotifier,
          AsyncValue<List<EntregaEntity>>,
          List<EntregaEntity>,
          FutureOr<List<EntregaEntity>>,
          String
        > {
  ListaEntregasPorClienteNotifierFamily._()
    : super(
        retry: null,
        name: r'listaEntregasPorClienteProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ListaEntregasPorClienteNotifierProvider call(String clienteId) =>
      ListaEntregasPorClienteNotifierProvider._(
        argument: clienteId,
        from: this,
      );

  @override
  String toString() => r'listaEntregasPorClienteProvider';
}

abstract class _$ListaEntregasPorClienteNotifier
    extends $AsyncNotifier<List<EntregaEntity>> {
  late final _$args = ref.$arg as String;
  String get clienteId => _$args;

  FutureOr<List<EntregaEntity>> build(String clienteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<EntregaEntity>>, List<EntregaEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<EntregaEntity>>, List<EntregaEntity>>,
              AsyncValue<List<EntregaEntity>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
