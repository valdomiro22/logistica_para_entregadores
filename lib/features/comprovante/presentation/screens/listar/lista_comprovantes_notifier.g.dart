// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_comprovantes_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ListaComprovantesNotifier)
final listaComprovantesProvider = ListaComprovantesNotifierProvider._();

final class ListaComprovantesNotifierProvider
    extends
        $AsyncNotifierProvider<
          ListaComprovantesNotifier,
          List<ComprovanteEntity>
        > {
  ListaComprovantesNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'listaComprovantesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$listaComprovantesNotifierHash();

  @$internal
  @override
  ListaComprovantesNotifier create() => ListaComprovantesNotifier();
}

String _$listaComprovantesNotifierHash() =>
    r'1c44aa3f4fa0b3710088a8d849309875381cee7b';

abstract class _$ListaComprovantesNotifier
    extends $AsyncNotifier<List<ComprovanteEntity>> {
  FutureOr<List<ComprovanteEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<ComprovanteEntity>>,
              List<ComprovanteEntity>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ComprovanteEntity>>,
                List<ComprovanteEntity>
              >,
              AsyncValue<List<ComprovanteEntity>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
