// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adicionar_cliente_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AdicionarClienteNotifier)
final adicionarClienteProvider = AdicionarClienteNotifierProvider._();

final class AdicionarClienteNotifierProvider
    extends $NotifierProvider<AdicionarClienteNotifier, AdicionarClienteState> {
  AdicionarClienteNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adicionarClienteProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adicionarClienteNotifierHash();

  @$internal
  @override
  AdicionarClienteNotifier create() => AdicionarClienteNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AdicionarClienteState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AdicionarClienteState>(value),
    );
  }
}

String _$adicionarClienteNotifierHash() =>
    r'a12a0b17aab0683f4331c9bc2a833cc1e4448b56';

abstract class _$AdicionarClienteNotifier
    extends $Notifier<AdicionarClienteState> {
  AdicionarClienteState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AdicionarClienteState, AdicionarClienteState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AdicionarClienteState, AdicionarClienteState>,
              AdicionarClienteState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
