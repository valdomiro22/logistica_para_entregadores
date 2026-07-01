// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comprovante_data_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(comprovanteDao)
final comprovanteDaoProvider = ComprovanteDaoProvider._();

final class ComprovanteDaoProvider
    extends $FunctionalProvider<ComprovanteDao, ComprovanteDao, ComprovanteDao>
    with $Provider<ComprovanteDao> {
  ComprovanteDaoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'comprovanteDaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$comprovanteDaoHash();

  @$internal
  @override
  $ProviderElement<ComprovanteDao> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ComprovanteDao create(Ref ref) {
    return comprovanteDao(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ComprovanteDao value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ComprovanteDao>(value),
    );
  }
}

String _$comprovanteDaoHash() => r'51a9b5dd24ad17f8ed82bce29a4ccbf8ad750bcd';

@ProviderFor(comprovanteLocalDataSource)
final comprovanteLocalDataSourceProvider =
    ComprovanteLocalDataSourceProvider._();

final class ComprovanteLocalDataSourceProvider
    extends
        $FunctionalProvider<
          ComprovanteLocalDataSource,
          ComprovanteLocalDataSource,
          ComprovanteLocalDataSource
        >
    with $Provider<ComprovanteLocalDataSource> {
  ComprovanteLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'comprovanteLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$comprovanteLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<ComprovanteLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ComprovanteLocalDataSource create(Ref ref) {
    return comprovanteLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ComprovanteLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ComprovanteLocalDataSource>(value),
    );
  }
}

String _$comprovanteLocalDataSourceHash() =>
    r'545b72c437b9830604f21f14b05d39e8d5014935';

@ProviderFor(comprovanteRepository)
final comprovanteRepositoryProvider = ComprovanteRepositoryProvider._();

final class ComprovanteRepositoryProvider
    extends
        $FunctionalProvider<
          ComprovanteRepository,
          ComprovanteRepository,
          ComprovanteRepository
        >
    with $Provider<ComprovanteRepository> {
  ComprovanteRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'comprovanteRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$comprovanteRepositoryHash();

  @$internal
  @override
  $ProviderElement<ComprovanteRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ComprovanteRepository create(Ref ref) {
    return comprovanteRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ComprovanteRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ComprovanteRepository>(value),
    );
  }
}

String _$comprovanteRepositoryHash() =>
    r'f2c9ca2cb4073128c4d401868c08ec197f0643f6';
