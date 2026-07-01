// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_data_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(clienteDao)
final clienteDaoProvider = ClienteDaoProvider._();

final class ClienteDaoProvider
    extends $FunctionalProvider<ClienteDao, ClienteDao, ClienteDao>
    with $Provider<ClienteDao> {
  ClienteDaoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clienteDaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clienteDaoHash();

  @$internal
  @override
  $ProviderElement<ClienteDao> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ClienteDao create(Ref ref) {
    return clienteDao(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClienteDao value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClienteDao>(value),
    );
  }
}

String _$clienteDaoHash() => r'e9e5fa3f2a2f7c166e2aa0ec0b36e58fd755de2d';

@ProviderFor(clienteLocalDataSource)
final clienteLocalDataSourceProvider = ClienteLocalDataSourceProvider._();

final class ClienteLocalDataSourceProvider
    extends
        $FunctionalProvider<
          ClienteLocalDataSource,
          ClienteLocalDataSource,
          ClienteLocalDataSource
        >
    with $Provider<ClienteLocalDataSource> {
  ClienteLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clienteLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clienteLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<ClienteLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ClienteLocalDataSource create(Ref ref) {
    return clienteLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClienteLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClienteLocalDataSource>(value),
    );
  }
}

String _$clienteLocalDataSourceHash() =>
    r'05a94f185ff9ed4d50afec4355322e5185fcfbc2';

@ProviderFor(clienteRepository)
final clienteRepositoryProvider = ClienteRepositoryProvider._();

final class ClienteRepositoryProvider
    extends
        $FunctionalProvider<
          ClienteRepository,
          ClienteRepository,
          ClienteRepository
        >
    with $Provider<ClienteRepository> {
  ClienteRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clienteRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clienteRepositoryHash();

  @$internal
  @override
  $ProviderElement<ClienteRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ClienteRepository create(Ref ref) {
    return clienteRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClienteRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClienteRepository>(value),
    );
  }
}

String _$clienteRepositoryHash() => r'73c2d9b650f0fa9cdf99b26e327834cf3de7c9f3';
