// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adicionar_entrega_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdicionarEntregaState {

 String get clienteId; String? get observacao; DateTime? get dataEntrega; String? get clienteIdErro; String? get dataEntregaErro; String? get geralErro; bool get isLoading; bool get isSuccess; bool get camposValidos;
/// Create a copy of AdicionarEntregaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdicionarEntregaStateCopyWith<AdicionarEntregaState> get copyWith => _$AdicionarEntregaStateCopyWithImpl<AdicionarEntregaState>(this as AdicionarEntregaState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdicionarEntregaState&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.observacao, observacao) || other.observacao == observacao)&&(identical(other.dataEntrega, dataEntrega) || other.dataEntrega == dataEntrega)&&(identical(other.clienteIdErro, clienteIdErro) || other.clienteIdErro == clienteIdErro)&&(identical(other.dataEntregaErro, dataEntregaErro) || other.dataEntregaErro == dataEntregaErro)&&(identical(other.geralErro, geralErro) || other.geralErro == geralErro)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,observacao,dataEntrega,clienteIdErro,dataEntregaErro,geralErro,isLoading,isSuccess,camposValidos);

@override
String toString() {
  return 'AdicionarEntregaState(clienteId: $clienteId, observacao: $observacao, dataEntrega: $dataEntrega, clienteIdErro: $clienteIdErro, dataEntregaErro: $dataEntregaErro, geralErro: $geralErro, isLoading: $isLoading, isSuccess: $isSuccess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class $AdicionarEntregaStateCopyWith<$Res>  {
  factory $AdicionarEntregaStateCopyWith(AdicionarEntregaState value, $Res Function(AdicionarEntregaState) _then) = _$AdicionarEntregaStateCopyWithImpl;
@useResult
$Res call({
 String clienteId, String? observacao, DateTime? dataEntrega, String? clienteIdErro, String? dataEntregaErro, String? geralErro, bool isLoading, bool isSuccess, bool camposValidos
});




}
/// @nodoc
class _$AdicionarEntregaStateCopyWithImpl<$Res>
    implements $AdicionarEntregaStateCopyWith<$Res> {
  _$AdicionarEntregaStateCopyWithImpl(this._self, this._then);

  final AdicionarEntregaState _self;
  final $Res Function(AdicionarEntregaState) _then;

/// Create a copy of AdicionarEntregaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? observacao = freezed,Object? dataEntrega = freezed,Object? clienteIdErro = freezed,Object? dataEntregaErro = freezed,Object? geralErro = freezed,Object? isLoading = null,Object? isSuccess = null,Object? camposValidos = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,observacao: freezed == observacao ? _self.observacao : observacao // ignore: cast_nullable_to_non_nullable
as String?,dataEntrega: freezed == dataEntrega ? _self.dataEntrega : dataEntrega // ignore: cast_nullable_to_non_nullable
as DateTime?,clienteIdErro: freezed == clienteIdErro ? _self.clienteIdErro : clienteIdErro // ignore: cast_nullable_to_non_nullable
as String?,dataEntregaErro: freezed == dataEntregaErro ? _self.dataEntregaErro : dataEntregaErro // ignore: cast_nullable_to_non_nullable
as String?,geralErro: freezed == geralErro ? _self.geralErro : geralErro // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AdicionarEntregaState].
extension AdicionarEntregaStatePatterns on AdicionarEntregaState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdicionarEntregaState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdicionarEntregaState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdicionarEntregaState value)  $default,){
final _that = this;
switch (_that) {
case _AdicionarEntregaState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdicionarEntregaState value)?  $default,){
final _that = this;
switch (_that) {
case _AdicionarEntregaState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clienteId,  String? observacao,  DateTime? dataEntrega,  String? clienteIdErro,  String? dataEntregaErro,  String? geralErro,  bool isLoading,  bool isSuccess,  bool camposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdicionarEntregaState() when $default != null:
return $default(_that.clienteId,_that.observacao,_that.dataEntrega,_that.clienteIdErro,_that.dataEntregaErro,_that.geralErro,_that.isLoading,_that.isSuccess,_that.camposValidos);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clienteId,  String? observacao,  DateTime? dataEntrega,  String? clienteIdErro,  String? dataEntregaErro,  String? geralErro,  bool isLoading,  bool isSuccess,  bool camposValidos)  $default,) {final _that = this;
switch (_that) {
case _AdicionarEntregaState():
return $default(_that.clienteId,_that.observacao,_that.dataEntrega,_that.clienteIdErro,_that.dataEntregaErro,_that.geralErro,_that.isLoading,_that.isSuccess,_that.camposValidos);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clienteId,  String? observacao,  DateTime? dataEntrega,  String? clienteIdErro,  String? dataEntregaErro,  String? geralErro,  bool isLoading,  bool isSuccess,  bool camposValidos)?  $default,) {final _that = this;
switch (_that) {
case _AdicionarEntregaState() when $default != null:
return $default(_that.clienteId,_that.observacao,_that.dataEntrega,_that.clienteIdErro,_that.dataEntregaErro,_that.geralErro,_that.isLoading,_that.isSuccess,_that.camposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _AdicionarEntregaState implements AdicionarEntregaState {
  const _AdicionarEntregaState({this.clienteId = '', this.observacao, this.dataEntrega, this.clienteIdErro, this.dataEntregaErro, this.geralErro, this.isLoading = false, this.isSuccess = false, this.camposValidos = false});
  

@override@JsonKey() final  String clienteId;
@override final  String? observacao;
@override final  DateTime? dataEntrega;
@override final  String? clienteIdErro;
@override final  String? dataEntregaErro;
@override final  String? geralErro;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSuccess;
@override@JsonKey() final  bool camposValidos;

/// Create a copy of AdicionarEntregaState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdicionarEntregaStateCopyWith<_AdicionarEntregaState> get copyWith => __$AdicionarEntregaStateCopyWithImpl<_AdicionarEntregaState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdicionarEntregaState&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.observacao, observacao) || other.observacao == observacao)&&(identical(other.dataEntrega, dataEntrega) || other.dataEntrega == dataEntrega)&&(identical(other.clienteIdErro, clienteIdErro) || other.clienteIdErro == clienteIdErro)&&(identical(other.dataEntregaErro, dataEntregaErro) || other.dataEntregaErro == dataEntregaErro)&&(identical(other.geralErro, geralErro) || other.geralErro == geralErro)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,observacao,dataEntrega,clienteIdErro,dataEntregaErro,geralErro,isLoading,isSuccess,camposValidos);

@override
String toString() {
  return 'AdicionarEntregaState(clienteId: $clienteId, observacao: $observacao, dataEntrega: $dataEntrega, clienteIdErro: $clienteIdErro, dataEntregaErro: $dataEntregaErro, geralErro: $geralErro, isLoading: $isLoading, isSuccess: $isSuccess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class _$AdicionarEntregaStateCopyWith<$Res> implements $AdicionarEntregaStateCopyWith<$Res> {
  factory _$AdicionarEntregaStateCopyWith(_AdicionarEntregaState value, $Res Function(_AdicionarEntregaState) _then) = __$AdicionarEntregaStateCopyWithImpl;
@override @useResult
$Res call({
 String clienteId, String? observacao, DateTime? dataEntrega, String? clienteIdErro, String? dataEntregaErro, String? geralErro, bool isLoading, bool isSuccess, bool camposValidos
});




}
/// @nodoc
class __$AdicionarEntregaStateCopyWithImpl<$Res>
    implements _$AdicionarEntregaStateCopyWith<$Res> {
  __$AdicionarEntregaStateCopyWithImpl(this._self, this._then);

  final _AdicionarEntregaState _self;
  final $Res Function(_AdicionarEntregaState) _then;

/// Create a copy of AdicionarEntregaState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? observacao = freezed,Object? dataEntrega = freezed,Object? clienteIdErro = freezed,Object? dataEntregaErro = freezed,Object? geralErro = freezed,Object? isLoading = null,Object? isSuccess = null,Object? camposValidos = null,}) {
  return _then(_AdicionarEntregaState(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,observacao: freezed == observacao ? _self.observacao : observacao // ignore: cast_nullable_to_non_nullable
as String?,dataEntrega: freezed == dataEntrega ? _self.dataEntrega : dataEntrega // ignore: cast_nullable_to_non_nullable
as DateTime?,clienteIdErro: freezed == clienteIdErro ? _self.clienteIdErro : clienteIdErro // ignore: cast_nullable_to_non_nullable
as String?,dataEntregaErro: freezed == dataEntregaErro ? _self.dataEntregaErro : dataEntregaErro // ignore: cast_nullable_to_non_nullable
as String?,geralErro: freezed == geralErro ? _self.geralErro : geralErro // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
