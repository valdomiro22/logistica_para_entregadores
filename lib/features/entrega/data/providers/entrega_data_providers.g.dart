// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entrega_data_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(entregaDao)
final entregaDaoProvider = EntregaDaoProvider._();

final class EntregaDaoProvider
    extends $FunctionalProvider<EntregaDao, EntregaDao, EntregaDao>
    with $Provider<EntregaDao> {
  EntregaDaoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'entregaDaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$entregaDaoHash();

  @$internal
  @override
  $ProviderElement<EntregaDao> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  EntregaDao create(Ref ref) {
    return entregaDao(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EntregaDao value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EntregaDao>(value),
    );
  }
}

String _$entregaDaoHash() => r'86c5a723fe94be8c2201fe1902be4566266de7c4';

@ProviderFor(etregaLocalDatacource)
final etregaLocalDatacourceProvider = EtregaLocalDatacourceProvider._();

final class EtregaLocalDatacourceProvider
    extends
        $FunctionalProvider<
          EntregaLocalDatacource,
          EntregaLocalDatacource,
          EntregaLocalDatacource
        >
    with $Provider<EntregaLocalDatacource> {
  EtregaLocalDatacourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'etregaLocalDatacourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$etregaLocalDatacourceHash();

  @$internal
  @override
  $ProviderElement<EntregaLocalDatacource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EntregaLocalDatacource create(Ref ref) {
    return etregaLocalDatacource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EntregaLocalDatacource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EntregaLocalDatacource>(value),
    );
  }
}

String _$etregaLocalDatacourceHash() =>
    r'ed114df7ed3220eff2c07b7918026394be158707';

@ProviderFor(entregaRepository)
final entregaRepositoryProvider = EntregaRepositoryProvider._();

final class EntregaRepositoryProvider
    extends
        $FunctionalProvider<
          EntregaRepository,
          EntregaRepository,
          EntregaRepository
        >
    with $Provider<EntregaRepository> {
  EntregaRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'entregaRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$entregaRepositoryHash();

  @$internal
  @override
  $ProviderElement<EntregaRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EntregaRepository create(Ref ref) {
    return entregaRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EntregaRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EntregaRepository>(value),
    );
  }
}

String _$entregaRepositoryHash() => r'985f17b46748588fc9d8b0880f62c7496e239ae4';
