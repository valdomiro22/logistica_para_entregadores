// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editar_cliente_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditarClienteState {

 String get id; String get nome; String get telefone; String get email; String? get observacao; DateTime? get criadoEm; String? get nomeErro; String? get telefoneErro; String? get emailErro; String? get geralErro; bool get isLoading; bool get isSuccess; bool get camposValidos;
/// Create a copy of EditarClienteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditarClienteStateCopyWith<EditarClienteState> get copyWith => _$EditarClienteStateCopyWithImpl<EditarClienteState>(this as EditarClienteState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditarClienteState&&(identical(other.id, id) || other.id == id)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.telefone, telefone) || other.telefone == telefone)&&(identical(other.email, email) || other.email == email)&&(identical(other.observacao, observacao) || other.observacao == observacao)&&(identical(other.criadoEm, criadoEm) || other.criadoEm == criadoEm)&&(identical(other.nomeErro, nomeErro) || other.nomeErro == nomeErro)&&(identical(other.telefoneErro, telefoneErro) || other.telefoneErro == telefoneErro)&&(identical(other.emailErro, emailErro) || other.emailErro == emailErro)&&(identical(other.geralErro, geralErro) || other.geralErro == geralErro)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,id,nome,telefone,email,observacao,criadoEm,nomeErro,telefoneErro,emailErro,geralErro,isLoading,isSuccess,camposValidos);

@override
String toString() {
  return 'EditarClienteState(id: $id, nome: $nome, telefone: $telefone, email: $email, observacao: $observacao, criadoEm: $criadoEm, nomeErro: $nomeErro, telefoneErro: $telefoneErro, emailErro: $emailErro, geralErro: $geralErro, isLoading: $isLoading, isSuccess: $isSuccess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class $EditarClienteStateCopyWith<$Res>  {
  factory $EditarClienteStateCopyWith(EditarClienteState value, $Res Function(EditarClienteState) _then) = _$EditarClienteStateCopyWithImpl;
@useResult
$Res call({
 String id, String nome, String telefone, String email, String? observacao, DateTime? criadoEm, String? nomeErro, String? telefoneErro, String? emailErro, String? geralErro, bool isLoading, bool isSuccess, bool camposValidos
});




}
/// @nodoc
class _$EditarClienteStateCopyWithImpl<$Res>
    implements $EditarClienteStateCopyWith<$Res> {
  _$EditarClienteStateCopyWithImpl(this._self, this._then);

  final EditarClienteState _self;
  final $Res Function(EditarClienteState) _then;

/// Create a copy of EditarClienteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nome = null,Object? telefone = null,Object? email = null,Object? observacao = freezed,Object? criadoEm = freezed,Object? nomeErro = freezed,Object? telefoneErro = freezed,Object? emailErro = freezed,Object? geralErro = freezed,Object? isLoading = null,Object? isSuccess = null,Object? camposValidos = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,telefone: null == telefone ? _self.telefone : telefone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,observacao: freezed == observacao ? _self.observacao : observacao // ignore: cast_nullable_to_non_nullable
as String?,criadoEm: freezed == criadoEm ? _self.criadoEm : criadoEm // ignore: cast_nullable_to_non_nullable
as DateTime?,nomeErro: freezed == nomeErro ? _self.nomeErro : nomeErro // ignore: cast_nullable_to_non_nullable
as String?,telefoneErro: freezed == telefoneErro ? _self.telefoneErro : telefoneErro // ignore: cast_nullable_to_non_nullable
as String?,emailErro: freezed == emailErro ? _self.emailErro : emailErro // ignore: cast_nullable_to_non_nullable
as String?,geralErro: freezed == geralErro ? _self.geralErro : geralErro // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EditarClienteState].
extension EditarClienteStatePatterns on EditarClienteState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditarClienteState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditarClienteState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditarClienteState value)  $default,){
final _that = this;
switch (_that) {
case _EditarClienteState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditarClienteState value)?  $default,){
final _that = this;
switch (_that) {
case _EditarClienteState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String nome,  String telefone,  String email,  String? observacao,  DateTime? criadoEm,  String? nomeErro,  String? telefoneErro,  String? emailErro,  String? geralErro,  bool isLoading,  bool isSuccess,  bool camposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditarClienteState() when $default != null:
return $default(_that.id,_that.nome,_that.telefone,_that.email,_that.observacao,_that.criadoEm,_that.nomeErro,_that.telefoneErro,_that.emailErro,_that.geralErro,_that.isLoading,_that.isSuccess,_that.camposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String nome,  String telefone,  String email,  String? observacao,  DateTime? criadoEm,  String? nomeErro,  String? telefoneErro,  String? emailErro,  String? geralErro,  bool isLoading,  bool isSuccess,  bool camposValidos)  $default,) {final _that = this;
switch (_that) {
case _EditarClienteState():
return $default(_that.id,_that.nome,_that.telefone,_that.email,_that.observacao,_that.criadoEm,_that.nomeErro,_that.telefoneErro,_that.emailErro,_that.geralErro,_that.isLoading,_that.isSuccess,_that.camposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String nome,  String telefone,  String email,  String? observacao,  DateTime? criadoEm,  String? nomeErro,  String? telefoneErro,  String? emailErro,  String? geralErro,  bool isLoading,  bool isSuccess,  bool camposValidos)?  $default,) {final _that = this;
switch (_that) {
case _EditarClienteState() when $default != null:
return $default(_that.id,_that.nome,_that.telefone,_that.email,_that.observacao,_that.criadoEm,_that.nomeErro,_that.telefoneErro,_that.emailErro,_that.geralErro,_that.isLoading,_that.isSuccess,_that.camposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _EditarClienteState implements EditarClienteState {
  const _EditarClienteState({this.id = '', this.nome = '', this.telefone = '', this.email = '', this.observacao, this.criadoEm, this.nomeErro, this.telefoneErro, this.emailErro, this.geralErro, this.isLoading = false, this.isSuccess = false, this.camposValidos = false});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String nome;
@override@JsonKey() final  String telefone;
@override@JsonKey() final  String email;
@override final  String? observacao;
@override final  DateTime? criadoEm;
@override final  String? nomeErro;
@override final  String? telefoneErro;
@override final  String? emailErro;
@override final  String? geralErro;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSuccess;
@override@JsonKey() final  bool camposValidos;

/// Create a copy of EditarClienteState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditarClienteStateCopyWith<_EditarClienteState> get copyWith => __$EditarClienteStateCopyWithImpl<_EditarClienteState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditarClienteState&&(identical(other.id, id) || other.id == id)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.telefone, telefone) || other.telefone == telefone)&&(identical(other.email, email) || other.email == email)&&(identical(other.observacao, observacao) || other.observacao == observacao)&&(identical(other.criadoEm, criadoEm) || other.criadoEm == criadoEm)&&(identical(other.nomeErro, nomeErro) || other.nomeErro == nomeErro)&&(identical(other.telefoneErro, telefoneErro) || other.telefoneErro == telefoneErro)&&(identical(other.emailErro, emailErro) || other.emailErro == emailErro)&&(identical(other.geralErro, geralErro) || other.geralErro == geralErro)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,id,nome,telefone,email,observacao,criadoEm,nomeErro,telefoneErro,emailErro,geralErro,isLoading,isSuccess,camposValidos);

@override
String toString() {
  return 'EditarClienteState(id: $id, nome: $nome, telefone: $telefone, email: $email, observacao: $observacao, criadoEm: $criadoEm, nomeErro: $nomeErro, telefoneErro: $telefoneErro, emailErro: $emailErro, geralErro: $geralErro, isLoading: $isLoading, isSuccess: $isSuccess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class _$EditarClienteStateCopyWith<$Res> implements $EditarClienteStateCopyWith<$Res> {
  factory _$EditarClienteStateCopyWith(_EditarClienteState value, $Res Function(_EditarClienteState) _then) = __$EditarClienteStateCopyWithImpl;
@override @useResult
$Res call({
 String id, String nome, String telefone, String email, String? observacao, DateTime? criadoEm, String? nomeErro, String? telefoneErro, String? emailErro, String? geralErro, bool isLoading, bool isSuccess, bool camposValidos
});




}
/// @nodoc
class __$EditarClienteStateCopyWithImpl<$Res>
    implements _$EditarClienteStateCopyWith<$Res> {
  __$EditarClienteStateCopyWithImpl(this._self, this._then);

  final _EditarClienteState _self;
  final $Res Function(_EditarClienteState) _then;

/// Create a copy of EditarClienteState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nome = null,Object? telefone = null,Object? email = null,Object? observacao = freezed,Object? criadoEm = freezed,Object? nomeErro = freezed,Object? telefoneErro = freezed,Object? emailErro = freezed,Object? geralErro = freezed,Object? isLoading = null,Object? isSuccess = null,Object? camposValidos = null,}) {
  return _then(_EditarClienteState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,telefone: null == telefone ? _self.telefone : telefone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,observacao: freezed == observacao ? _self.observacao : observacao // ignore: cast_nullable_to_non_nullable
as String?,criadoEm: freezed == criadoEm ? _self.criadoEm : criadoEm // ignore: cast_nullable_to_non_nullable
as DateTime?,nomeErro: freezed == nomeErro ? _self.nomeErro : nomeErro // ignore: cast_nullable_to_non_nullable
as String?,telefoneErro: freezed == telefoneErro ? _self.telefoneErro : telefoneErro // ignore: cast_nullable_to_non_nullable
as String?,emailErro: freezed == emailErro ? _self.emailErro : emailErro // ignore: cast_nullable_to_non_nullable
as String?,geralErro: freezed == geralErro ? _self.geralErro : geralErro // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
