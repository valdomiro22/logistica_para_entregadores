// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_clientes.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getAllClientes)
final getAllClientesProvider = GetAllClientesProvider._();

final class GetAllClientesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ClienteEntity>>,
          List<ClienteEntity>,
          FutureOr<List<ClienteEntity>>
        >
    with
        $FutureModifier<List<ClienteEntity>>,
        $FutureProvider<List<ClienteEntity>> {
  GetAllClientesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllClientesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAllClientesHash();

  @$internal
  @override
  $FutureProviderElement<List<ClienteEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ClienteEntity>> create(Ref ref) {
    return getAllClientes(ref);
  }
}

String _$getAllClientesHash() => r'c425bca481875450368852594a184392aee1c801';
