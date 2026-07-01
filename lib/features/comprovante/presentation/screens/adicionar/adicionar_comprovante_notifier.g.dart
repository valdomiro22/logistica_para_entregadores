// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adicionar_comprovante_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AdicionarComprovanteNotifier)
final adicionarComprovanteProvider = AdicionarComprovanteNotifierProvider._();

final class AdicionarComprovanteNotifierProvider
    extends
        $NotifierProvider<
          AdicionarComprovanteNotifier,
          AdicionarComprovanteState
        > {
  AdicionarComprovanteNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adicionarComprovanteProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adicionarComprovanteNotifierHash();

  @$internal
  @override
  AdicionarComprovanteNotifier create() => AdicionarComprovanteNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AdicionarComprovanteState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AdicionarComprovanteState>(value),
    );
  }
}

String _$adicionarComprovanteNotifierHash() =>
    r'059c5d23852afc0ba321474cf88051e3989f41b1';

abstract class _$AdicionarComprovanteNotifier
    extends $Notifier<AdicionarComprovanteState> {
  AdicionarComprovanteState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AdicionarComprovanteState, AdicionarComprovanteState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AdicionarComprovanteState, AdicionarComprovanteState>,
              AdicionarComprovanteState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
