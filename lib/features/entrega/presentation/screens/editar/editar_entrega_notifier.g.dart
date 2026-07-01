// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editar_entrega_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditarEntregaNotifier)
final editarEntregaProvider = EditarEntregaNotifierProvider._();

final class EditarEntregaNotifierProvider
    extends $NotifierProvider<EditarEntregaNotifier, EditarEntregaState> {
  EditarEntregaNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editarEntregaProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editarEntregaNotifierHash();

  @$internal
  @override
  EditarEntregaNotifier create() => EditarEntregaNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditarEntregaState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditarEntregaState>(value),
    );
  }
}

String _$editarEntregaNotifierHash() =>
    r'15c0bba4db9182365e9f42cc69909ff41c193705';

abstract class _$EditarEntregaNotifier extends $Notifier<EditarEntregaState> {
  EditarEntregaState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<EditarEntregaState, EditarEntregaState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EditarEntregaState, EditarEntregaState>,
              EditarEntregaState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
