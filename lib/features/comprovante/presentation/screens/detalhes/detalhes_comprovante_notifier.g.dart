// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detalhes_comprovante_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DetalhesComprovanteNotifier)
final detalhesComprovanteProvider = DetalhesComprovanteNotifierFamily._();

final class DetalhesComprovanteNotifierProvider
    extends
        $AsyncNotifierProvider<DetalhesComprovanteNotifier, ComprovanteEntity> {
  DetalhesComprovanteNotifierProvider._({
    required DetalhesComprovanteNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'detalhesComprovanteProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$detalhesComprovanteNotifierHash();

  @override
  String toString() {
    return r'detalhesComprovanteProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  DetalhesComprovanteNotifier create() => DetalhesComprovanteNotifier();

  @override
  bool operator ==(Object other) {
    return other is DetalhesComprovanteNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$detalhesComprovanteNotifierHash() =>
    r'095e2b865fc93aa66fbeb7a1e6d5cf1177fd1237';

final class DetalhesComprovanteNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          DetalhesComprovanteNotifier,
          AsyncValue<ComprovanteEntity>,
          ComprovanteEntity,
          FutureOr<ComprovanteEntity>,
          String
        > {
  DetalhesComprovanteNotifierFamily._()
    : super(
        retry: null,
        name: r'detalhesComprovanteProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DetalhesComprovanteNotifierProvider call(String comprovanteId) =>
      DetalhesComprovanteNotifierProvider._(
        argument: comprovanteId,
        from: this,
      );

  @override
  String toString() => r'detalhesComprovanteProvider';
}

abstract class _$DetalhesComprovanteNotifier
    extends $AsyncNotifier<ComprovanteEntity> {
  late final _$args = ref.$arg as String;
  String get comprovanteId => _$args;

  FutureOr<ComprovanteEntity> build(String comprovanteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<ComprovanteEntity>, ComprovanteEntity>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ComprovanteEntity>, ComprovanteEntity>,
              AsyncValue<ComprovanteEntity>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
