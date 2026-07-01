// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_entregas_concluidas_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ListaEntregasConcluidasNotifier)
final listaEntregasConcluidasProvider =
    ListaEntregasConcluidasNotifierFamily._();

final class ListaEntregasConcluidasNotifierProvider
    extends
        $AsyncNotifierProvider<
          ListaEntregasConcluidasNotifier,
          List<EntregaEntity>
        > {
  ListaEntregasConcluidasNotifierProvider._({
    required ListaEntregasConcluidasNotifierFamily super.from,
    required StatusEntrega super.argument,
  }) : super(
         retry: null,
         name: r'listaEntregasConcluidasProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$listaEntregasConcluidasNotifierHash();

  @override
  String toString() {
    return r'listaEntregasConcluidasProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ListaEntregasConcluidasNotifier create() => ListaEntregasConcluidasNotifier();

  @override
  bool operator ==(Object other) {
    return other is ListaEntregasConcluidasNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$listaEntregasConcluidasNotifierHash() =>
    r'195c32273fd2770dedaf650207db7429613700d9';

final class ListaEntregasConcluidasNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ListaEntregasConcluidasNotifier,
          AsyncValue<List<EntregaEntity>>,
          List<EntregaEntity>,
          FutureOr<List<EntregaEntity>>,
          StatusEntrega
        > {
  ListaEntregasConcluidasNotifierFamily._()
    : super(
        retry: null,
        name: r'listaEntregasConcluidasProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ListaEntregasConcluidasNotifierProvider call(StatusEntrega status) =>
      ListaEntregasConcluidasNotifierProvider._(argument: status, from: this);

  @override
  String toString() => r'listaEntregasConcluidasProvider';
}

abstract class _$ListaEntregasConcluidasNotifier
    extends $AsyncNotifier<List<EntregaEntity>> {
  late final _$args = ref.$arg as StatusEntrega;
  StatusEntrega get status => _$args;

  FutureOr<List<EntregaEntity>> build(StatusEntrega status);
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
