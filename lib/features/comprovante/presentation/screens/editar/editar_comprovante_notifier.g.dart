// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editar_comprovante_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditarComprovanteNotifier)
final editarComprovanteProvider = EditarComprovanteNotifierProvider._();

final class EditarComprovanteNotifierProvider
    extends
        $NotifierProvider<EditarComprovanteNotifier, EditarComprovanteState> {
  EditarComprovanteNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editarComprovanteProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editarComprovanteNotifierHash();

  @$internal
  @override
  EditarComprovanteNotifier create() => EditarComprovanteNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditarComprovanteState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditarComprovanteState>(value),
    );
  }
}

String _$editarComprovanteNotifierHash() =>
    r'1722befaee4e7147943a7f5c0a89aeec1c4c4ca8';

abstract class _$EditarComprovanteNotifier
    extends $Notifier<EditarComprovanteState> {
  EditarComprovanteState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<EditarComprovanteState, EditarComprovanteState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EditarComprovanteState, EditarComprovanteState>,
              EditarComprovanteState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
