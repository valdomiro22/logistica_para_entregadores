// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editar_entrega_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditarEntregaState {

 String get id; String get clienteId; DateTime? get dataEntrega; String? get observacao; DateTime? get criadoEm; StatusEntrega? get status; String? get clienteIdErro; String? get geralErro; String? get dataEntregaErro; String? get observacaoErro; String? get criadoEmErro; bool get isLoading; bool get isSuccess; bool get camposValidos;
/// Create a copy of EditarEntregaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditarEntregaStateCopyWith<EditarEntregaState> get copyWith => _$EditarEntregaStateCopyWithImpl<EditarEntregaState>(this as EditarEntregaState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditarEntregaState&&(identical(other.id, id) || other.id == id)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.dataEntrega, dataEntrega) || other.dataEntrega == dataEntrega)&&(identical(other.observacao, observacao) || other.observacao == observacao)&&(identical(other.criadoEm, criadoEm) || other.criadoEm == criadoEm)&&(identical(other.status, status) || other.status == status)&&(identical(other.clienteIdErro, clienteIdErro) || other.clienteIdErro == clienteIdErro)&&(identical(other.geralErro, geralErro) || other.geralErro == geralErro)&&(identical(other.dataEntregaErro, dataEntregaErro) || other.dataEntregaErro == dataEntregaErro)&&(identical(other.observacaoErro, observacaoErro) || other.observacaoErro == observacaoErro)&&(identical(other.criadoEmErro, criadoEmErro) || other.criadoEmErro == criadoEmErro)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,id,clienteId,dataEntrega,observacao,criadoEm,status,clienteIdErro,geralErro,dataEntregaErro,observacaoErro,criadoEmErro,isLoading,isSuccess,camposValidos);

@override
String toString() {
  return 'EditarEntregaState(id: $id, clienteId: $clienteId, dataEntrega: $dataEntrega, observacao: $observacao, criadoEm: $criadoEm, status: $status, clienteIdErro: $clienteIdErro, geralErro: $geralErro, dataEntregaErro: $dataEntregaErro, observacaoErro: $observacaoErro, criadoEmErro: $criadoEmErro, isLoading: $isLoading, isSuccess: $isSuccess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class $EditarEntregaStateCopyWith<$Res>  {
  factory $EditarEntregaStateCopyWith(EditarEntregaState value, $Res Function(EditarEntregaState) _then) = _$EditarEntregaStateCopyWithImpl;
@useResult
$Res call({
 String id, String clienteId, DateTime? dataEntrega, String? observacao, DateTime? criadoEm, StatusEntrega? status, String? clienteIdErro, String? geralErro, String? dataEntregaErro, String? observacaoErro, String? criadoEmErro, bool isLoading, bool isSuccess, bool camposValidos
});




}
/// @nodoc
class _$EditarEntregaStateCopyWithImpl<$Res>
    implements $EditarEntregaStateCopyWith<$Res> {
  _$EditarEntregaStateCopyWithImpl(this._self, this._then);

  final EditarEntregaState _self;
  final $Res Function(EditarEntregaState) _then;

/// Create a copy of EditarEntregaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? clienteId = null,Object? dataEntrega = freezed,Object? observacao = freezed,Object? criadoEm = freezed,Object? status = freezed,Object? clienteIdErro = freezed,Object? geralErro = freezed,Object? dataEntregaErro = freezed,Object? observacaoErro = freezed,Object? criadoEmErro = freezed,Object? isLoading = null,Object? isSuccess = null,Object? camposValidos = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,dataEntrega: freezed == dataEntrega ? _self.dataEntrega : dataEntrega // ignore: cast_nullable_to_non_nullable
as DateTime?,observacao: freezed == observacao ? _self.observacao : observacao // ignore: cast_nullable_to_non_nullable
as String?,criadoEm: freezed == criadoEm ? _self.criadoEm : criadoEm // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusEntrega?,clienteIdErro: freezed == clienteIdErro ? _self.clienteIdErro : clienteIdErro // ignore: cast_nullable_to_non_nullable
as String?,geralErro: freezed == geralErro ? _self.geralErro : geralErro // ignore: cast_nullable_to_non_nullable
as String?,dataEntregaErro: freezed == dataEntregaErro ? _self.dataEntregaErro : dataEntregaErro // ignore: cast_nullable_to_non_nullable
as String?,observacaoErro: freezed == observacaoErro ? _self.observacaoErro : observacaoErro // ignore: cast_nullable_to_non_nullable
as String?,criadoEmErro: freezed == criadoEmErro ? _self.criadoEmErro : criadoEmErro // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EditarEntregaState].
extension EditarEntregaStatePatterns on EditarEntregaState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditarEntregaState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditarEntregaState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditarEntregaState value)  $default,){
final _that = this;
switch (_that) {
case _EditarEntregaState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditarEntregaState value)?  $default,){
final _that = this;
switch (_that) {
case _EditarEntregaState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String clienteId,  DateTime? dataEntrega,  String? observacao,  DateTime? criadoEm,  StatusEntrega? status,  String? clienteIdErro,  String? geralErro,  String? dataEntregaErro,  String? observacaoErro,  String? criadoEmErro,  bool isLoading,  bool isSuccess,  bool camposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditarEntregaState() when $default != null:
return $default(_that.id,_that.clienteId,_that.dataEntrega,_that.observacao,_that.criadoEm,_that.status,_that.clienteIdErro,_that.geralErro,_that.dataEntregaErro,_that.observacaoErro,_that.criadoEmErro,_that.isLoading,_that.isSuccess,_that.camposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String clienteId,  DateTime? dataEntrega,  String? observacao,  DateTime? criadoEm,  StatusEntrega? status,  String? clienteIdErro,  String? geralErro,  String? dataEntregaErro,  String? observacaoErro,  String? criadoEmErro,  bool isLoading,  bool isSuccess,  bool camposValidos)  $default,) {final _that = this;
switch (_that) {
case _EditarEntregaState():
return $default(_that.id,_that.clienteId,_that.dataEntrega,_that.observacao,_that.criadoEm,_that.status,_that.clienteIdErro,_that.geralErro,_that.dataEntregaErro,_that.observacaoErro,_that.criadoEmErro,_that.isLoading,_that.isSuccess,_that.camposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String clienteId,  DateTime? dataEntrega,  String? observacao,  DateTime? criadoEm,  StatusEntrega? status,  String? clienteIdErro,  String? geralErro,  String? dataEntregaErro,  String? observacaoErro,  String? criadoEmErro,  bool isLoading,  bool isSuccess,  bool camposValidos)?  $default,) {final _that = this;
switch (_that) {
case _EditarEntregaState() when $default != null:
return $default(_that.id,_that.clienteId,_that.dataEntrega,_that.observacao,_that.criadoEm,_that.status,_that.clienteIdErro,_that.geralErro,_that.dataEntregaErro,_that.observacaoErro,_that.criadoEmErro,_that.isLoading,_that.isSuccess,_that.camposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _EditarEntregaState implements EditarEntregaState {
  const _EditarEntregaState({this.id = '', this.clienteId = '', this.dataEntrega, this.observacao, this.criadoEm, this.status, this.clienteIdErro, this.geralErro, this.dataEntregaErro, this.observacaoErro, this.criadoEmErro, this.isLoading = false, this.isSuccess = false, this.camposValidos = false});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String clienteId;
@override final  DateTime? dataEntrega;
@override final  String? observacao;
@override final  DateTime? criadoEm;
@override final  StatusEntrega? status;
@override final  String? clienteIdErro;
@override final  String? geralErro;
@override final  String? dataEntregaErro;
@override final  String? observacaoErro;
@override final  String? criadoEmErro;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSuccess;
@override@JsonKey() final  bool camposValidos;

/// Create a copy of EditarEntregaState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditarEntregaStateCopyWith<_EditarEntregaState> get copyWith => __$EditarEntregaStateCopyWithImpl<_EditarEntregaState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditarEntregaState&&(identical(other.id, id) || other.id == id)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.dataEntrega, dataEntrega) || other.dataEntrega == dataEntrega)&&(identical(other.observacao, observacao) || other.observacao == observacao)&&(identical(other.criadoEm, criadoEm) || other.criadoEm == criadoEm)&&(identical(other.status, status) || other.status == status)&&(identical(other.clienteIdErro, clienteIdErro) || other.clienteIdErro == clienteIdErro)&&(identical(other.geralErro, geralErro) || other.geralErro == geralErro)&&(identical(other.dataEntregaErro, dataEntregaErro) || other.dataEntregaErro == dataEntregaErro)&&(identical(other.observacaoErro, observacaoErro) || other.observacaoErro == observacaoErro)&&(identical(other.criadoEmErro, criadoEmErro) || other.criadoEmErro == criadoEmErro)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,id,clienteId,dataEntrega,observacao,criadoEm,status,clienteIdErro,geralErro,dataEntregaErro,observacaoErro,criadoEmErro,isLoading,isSuccess,camposValidos);

@override
String toString() {
  return 'EditarEntregaState(id: $id, clienteId: $clienteId, dataEntrega: $dataEntrega, observacao: $observacao, criadoEm: $criadoEm, status: $status, clienteIdErro: $clienteIdErro, geralErro: $geralErro, dataEntregaErro: $dataEntregaErro, observacaoErro: $observacaoErro, criadoEmErro: $criadoEmErro, isLoading: $isLoading, isSuccess: $isSuccess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class _$EditarEntregaStateCopyWith<$Res> implements $EditarEntregaStateCopyWith<$Res> {
  factory _$EditarEntregaStateCopyWith(_EditarEntregaState value, $Res Function(_EditarEntregaState) _then) = __$EditarEntregaStateCopyWithImpl;
@override @useResult
$Res call({
 String id, String clienteId, DateTime? dataEntrega, String? observacao, DateTime? criadoEm, StatusEntrega? status, String? clienteIdErro, String? geralErro, String? dataEntregaErro, String? observacaoErro, String? criadoEmErro, bool isLoading, bool isSuccess, bool camposValidos
});




}
/// @nodoc
class __$EditarEntregaStateCopyWithImpl<$Res>
    implements _$EditarEntregaStateCopyWith<$Res> {
  __$EditarEntregaStateCopyWithImpl(this._self, this._then);

  final _EditarEntregaState _self;
  final $Res Function(_EditarEntregaState) _then;

/// Create a copy of EditarEntregaState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? clienteId = null,Object? dataEntrega = freezed,Object? observacao = freezed,Object? criadoEm = freezed,Object? status = freezed,Object? clienteIdErro = freezed,Object? geralErro = freezed,Object? dataEntregaErro = freezed,Object? observacaoErro = freezed,Object? criadoEmErro = freezed,Object? isLoading = null,Object? isSuccess = null,Object? camposValidos = null,}) {
  return _then(_EditarEntregaState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,dataEntrega: freezed == dataEntrega ? _self.dataEntrega : dataEntrega // ignore: cast_nullable_to_non_nullable
as DateTime?,observacao: freezed == observacao ? _self.observacao : observacao // ignore: cast_nullable_to_non_nullable
as String?,criadoEm: freezed == criadoEm ? _self.criadoEm : criadoEm // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusEntrega?,clienteIdErro: freezed == clienteIdErro ? _self.clienteIdErro : clienteIdErro // ignore: cast_nullable_to_non_nullable
as String?,geralErro: freezed == geralErro ? _self.geralErro : geralErro // ignore: cast_nullable_to_non_nullable
as String?,dataEntregaErro: freezed == dataEntregaErro ? _self.dataEntregaErro : dataEntregaErro // ignore: cast_nullable_to_non_nullable
as String?,observacaoErro: freezed == observacaoErro ? _self.observacaoErro : observacaoErro // ignore: cast_nullable_to_non_nullable
as String?,criadoEmErro: freezed == criadoEmErro ? _self.criadoEmErro : criadoEmErro // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
