// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editar_cliente_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditarClienteNotifier)
final editarClienteProvider = EditarClienteNotifierProvider._();

final class EditarClienteNotifierProvider
    extends $NotifierProvider<EditarClienteNotifier, EditarClienteState> {
  EditarClienteNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editarClienteProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editarClienteNotifierHash();

  @$internal
  @override
  EditarClienteNotifier create() => EditarClienteNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditarClienteState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditarClienteState>(value),
    );
  }
}

String _$editarClienteNotifierHash() =>
    r'094c516b7f6fe4bea950daf7ba706ec491cd55c1';

abstract class _$EditarClienteNotifier extends $Notifier<EditarClienteState> {
  EditarClienteState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<EditarClienteState, EditarClienteState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EditarClienteState, EditarClienteState>,
              EditarClienteState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
