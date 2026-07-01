// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_one_cliente_por_id.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getOneClientePorId)
final getOneClientePorIdProvider = GetOneClientePorIdFamily._();

final class GetOneClientePorIdProvider
    extends
        $FunctionalProvider<
          AsyncValue<ClienteEntity>,
          ClienteEntity,
          FutureOr<ClienteEntity>
        >
    with $FutureModifier<ClienteEntity>, $FutureProvider<ClienteEntity> {
  GetOneClientePorIdProvider._({
    required GetOneClientePorIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'getOneClientePorIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getOneClientePorIdHash();

  @override
  String toString() {
    return r'getOneClientePorIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ClienteEntity> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ClienteEntity> create(Ref ref) {
    final argument = this.argument as String;
    return getOneClientePorId(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is GetOneClientePorIdProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getOneClientePorIdHash() =>
    r'0e90e7245229a00fbf8a9177b75c7785c2419af6';

final class GetOneClientePorIdFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ClienteEntity>, String> {
  GetOneClientePorIdFamily._()
    : super(
        retry: null,
        name: r'getOneClientePorIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetOneClientePorIdProvider call(String clienteId) =>
      GetOneClientePorIdProvider._(argument: clienteId, from: this);

  @override
  String toString() => r'getOneClientePorIdProvider';
}
