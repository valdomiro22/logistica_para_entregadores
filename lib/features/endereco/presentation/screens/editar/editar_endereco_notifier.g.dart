// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editar_endereco_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditarEnderecoNotifier)
final editarEnderecoProvider = EditarEnderecoNotifierProvider._();

final class EditarEnderecoNotifierProvider
    extends $NotifierProvider<EditarEnderecoNotifier, EditarEnderecoState> {
  EditarEnderecoNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editarEnderecoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editarEnderecoNotifierHash();

  @$internal
  @override
  EditarEnderecoNotifier create() => EditarEnderecoNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditarEnderecoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditarEnderecoState>(value),
    );
  }
}

String _$editarEnderecoNotifierHash() =>
    r'b9464690a37d63e1131e707b91632aa7528b894b';

abstract class _$EditarEnderecoNotifier extends $Notifier<EditarEnderecoState> {
  EditarEnderecoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<EditarEnderecoState, EditarEnderecoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EditarEnderecoState, EditarEnderecoState>,
              EditarEnderecoState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
