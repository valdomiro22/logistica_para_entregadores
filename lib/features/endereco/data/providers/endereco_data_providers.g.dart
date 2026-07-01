// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endereco_data_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(enderecoDao)
final enderecoDaoProvider = EnderecoDaoProvider._();

final class EnderecoDaoProvider
    extends $FunctionalProvider<EnderecoDao, EnderecoDao, EnderecoDao>
    with $Provider<EnderecoDao> {
  EnderecoDaoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'enderecoDaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$enderecoDaoHash();

  @$internal
  @override
  $ProviderElement<EnderecoDao> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  EnderecoDao create(Ref ref) {
    return enderecoDao(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EnderecoDao value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EnderecoDao>(value),
    );
  }
}

String _$enderecoDaoHash() => r'f7f2d4d05f971d97e4b8cd4fd4876de7b2c075fe';

@ProviderFor(enderecoLocalDataSource)
final enderecoLocalDataSourceProvider = EnderecoLocalDataSourceProvider._();

final class EnderecoLocalDataSourceProvider
    extends
        $FunctionalProvider<
          EnderecoLocalDataSource,
          EnderecoLocalDataSource,
          EnderecoLocalDataSource
        >
    with $Provider<EnderecoLocalDataSource> {
  EnderecoLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'enderecoLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$enderecoLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<EnderecoLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EnderecoLocalDataSource create(Ref ref) {
    return enderecoLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EnderecoLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EnderecoLocalDataSource>(value),
    );
  }
}

String _$enderecoLocalDataSourceHash() =>
    r'b361fe14d6114fa18d62648d2a8cff869f19fbf8';

@ProviderFor(enderecoRepository)
final enderecoRepositoryProvider = EnderecoRepositoryProvider._();

final class EnderecoRepositoryProvider
    extends
        $FunctionalProvider<
          EnderecoRepository,
          EnderecoRepository,
          EnderecoRepository
        >
    with $Provider<EnderecoRepository> {
  EnderecoRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'enderecoRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$enderecoRepositoryHash();

  @$internal
  @override
  $ProviderElement<EnderecoRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EnderecoRepository create(Ref ref) {
    return enderecoRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EnderecoRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EnderecoRepository>(value),
    );
  }
}

String _$enderecoRepositoryHash() =>
    r'0554bf7c09f179a04599d884b2cd1ff2c4bf47b5';
