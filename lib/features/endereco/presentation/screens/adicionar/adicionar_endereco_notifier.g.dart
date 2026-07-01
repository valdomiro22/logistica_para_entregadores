// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adicionar_endereco_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AdicionarEnderecoNotifier)
final adicionarEnderecoProvider = AdicionarEnderecoNotifierProvider._();

final class AdicionarEnderecoNotifierProvider
    extends
        $NotifierProvider<AdicionarEnderecoNotifier, AdicionarEnderecoState> {
  AdicionarEnderecoNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adicionarEnderecoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adicionarEnderecoNotifierHash();

  @$internal
  @override
  AdicionarEnderecoNotifier create() => AdicionarEnderecoNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AdicionarEnderecoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AdicionarEnderecoState>(value),
    );
  }
}

String _$adicionarEnderecoNotifierHash() =>
    r'255193a65161b524688e892fe827bbf3ec34132c';

abstract class _$AdicionarEnderecoNotifier
    extends $Notifier<AdicionarEnderecoState> {
  AdicionarEnderecoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AdicionarEnderecoState, AdicionarEnderecoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AdicionarEnderecoState, AdicionarEnderecoState>,
              AdicionarEnderecoState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
