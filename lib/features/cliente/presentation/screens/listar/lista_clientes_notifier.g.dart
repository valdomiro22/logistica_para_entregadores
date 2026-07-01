// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_clientes_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ListaClientesNotifier)
final listaClientesProvider = ListaClientesNotifierProvider._();

final class ListaClientesNotifierProvider
    extends $AsyncNotifierProvider<ListaClientesNotifier, List<ClienteEntity>> {
  ListaClientesNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'listaClientesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$listaClientesNotifierHash();

  @$internal
  @override
  ListaClientesNotifier create() => ListaClientesNotifier();
}

String _$listaClientesNotifierHash() =>
    r'8de20b093a459f527a71513e7a3ecc5b44efaaeb';

abstract class _$ListaClientesNotifier
    extends $AsyncNotifier<List<ClienteEntity>> {
  FutureOr<List<ClienteEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<ClienteEntity>>, List<ClienteEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<ClienteEntity>>, List<ClienteEntity>>,
              AsyncValue<List<ClienteEntity>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
