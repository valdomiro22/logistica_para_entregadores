// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adicionar_entrega_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AdicionarEntregaNotifier)
final adicionarEntregaProvider = AdicionarEntregaNotifierProvider._();

final class AdicionarEntregaNotifierProvider
    extends $NotifierProvider<AdicionarEntregaNotifier, AdicionarEntregaState> {
  AdicionarEntregaNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adicionarEntregaProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adicionarEntregaNotifierHash();

  @$internal
  @override
  AdicionarEntregaNotifier create() => AdicionarEntregaNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AdicionarEntregaState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AdicionarEntregaState>(value),
    );
  }
}

String _$adicionarEntregaNotifierHash() =>
    r'5a8c4d8345012149a67d093d03727249a9916e0c';

abstract class _$AdicionarEntregaNotifier
    extends $Notifier<AdicionarEntregaState> {
  AdicionarEntregaState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AdicionarEntregaState, AdicionarEntregaState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AdicionarEntregaState, AdicionarEntregaState>,
              AdicionarEntregaState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
