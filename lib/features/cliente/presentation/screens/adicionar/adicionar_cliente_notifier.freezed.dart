// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adicionar_cliente_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdicionarClienteState {

 String get nome; String get telefone; String get email; String? get observacao; String? get nomeErro; String? get telefoneErro; String? get emailErro; String? get geralErro; bool get isLoading; bool get isSuccess; bool get camposValidos;
/// Create a copy of AdicionarClienteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdicionarClienteStateCopyWith<AdicionarClienteState> get copyWith => _$AdicionarClienteStateCopyWithImpl<AdicionarClienteState>(this as AdicionarClienteState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdicionarClienteState&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.telefone, telefone) || other.telefone == telefone)&&(identical(other.email, email) || other.email == email)&&(identical(other.observacao, observacao) || other.observacao == observacao)&&(identical(other.nomeErro, nomeErro) || other.nomeErro == nomeErro)&&(identical(other.telefoneErro, telefoneErro) || other.telefoneErro == telefoneErro)&&(identical(other.emailErro, emailErro) || other.emailErro == emailErro)&&(identical(other.geralErro, geralErro) || other.geralErro == geralErro)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,nome,telefone,email,observacao,nomeErro,telefoneErro,emailErro,geralErro,isLoading,isSuccess,camposValidos);

@override
String toString() {
  return 'AdicionarClienteState(nome: $nome, telefone: $telefone, email: $email, observacao: $observacao, nomeErro: $nomeErro, telefoneErro: $telefoneErro, emailErro: $emailErro, geralErro: $geralErro, isLoading: $isLoading, isSuccess: $isSuccess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class $AdicionarClienteStateCopyWith<$Res>  {
  factory $AdicionarClienteStateCopyWith(AdicionarClienteState value, $Res Function(AdicionarClienteState) _then) = _$AdicionarClienteStateCopyWithImpl;
@useResult
$Res call({
 String nome, String telefone, String email, String? observacao, String? nomeErro, String? telefoneErro, String? emailErro, String? geralErro, bool isLoading, bool isSuccess, bool camposValidos
});




}
/// @nodoc
class _$AdicionarClienteStateCopyWithImpl<$Res>
    implements $AdicionarClienteStateCopyWith<$Res> {
  _$AdicionarClienteStateCopyWithImpl(this._self, this._then);

  final AdicionarClienteState _self;
  final $Res Function(AdicionarClienteState) _then;

/// Create a copy of AdicionarClienteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nome = null,Object? telefone = null,Object? email = null,Object? observacao = freezed,Object? nomeErro = freezed,Object? telefoneErro = freezed,Object? emailErro = freezed,Object? geralErro = freezed,Object? isLoading = null,Object? isSuccess = null,Object? camposValidos = null,}) {
  return _then(_self.copyWith(
nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,telefone: null == telefone ? _self.telefone : telefone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,observacao: freezed == observacao ? _self.observacao : observacao // ignore: cast_nullable_to_non_nullable
as String?,nomeErro: freezed == nomeErro ? _self.nomeErro : nomeErro // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [AdicionarClienteState].
extension AdicionarClienteStatePatterns on AdicionarClienteState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdicionarClienteState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdicionarClienteState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdicionarClienteState value)  $default,){
final _that = this;
switch (_that) {
case _AdicionarClienteState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdicionarClienteState value)?  $default,){
final _that = this;
switch (_that) {
case _AdicionarClienteState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nome,  String telefone,  String email,  String? observacao,  String? nomeErro,  String? telefoneErro,  String? emailErro,  String? geralErro,  bool isLoading,  bool isSuccess,  bool camposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdicionarClienteState() when $default != null:
return $default(_that.nome,_that.telefone,_that.email,_that.observacao,_that.nomeErro,_that.telefoneErro,_that.emailErro,_that.geralErro,_that.isLoading,_that.isSuccess,_that.camposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nome,  String telefone,  String email,  String? observacao,  String? nomeErro,  String? telefoneErro,  String? emailErro,  String? geralErro,  bool isLoading,  bool isSuccess,  bool camposValidos)  $default,) {final _that = this;
switch (_that) {
case _AdicionarClienteState():
return $default(_that.nome,_that.telefone,_that.email,_that.observacao,_that.nomeErro,_that.telefoneErro,_that.emailErro,_that.geralErro,_that.isLoading,_that.isSuccess,_that.camposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nome,  String telefone,  String email,  String? observacao,  String? nomeErro,  String? telefoneErro,  String? emailErro,  String? geralErro,  bool isLoading,  bool isSuccess,  bool camposValidos)?  $default,) {final _that = this;
switch (_that) {
case _AdicionarClienteState() when $default != null:
return $default(_that.nome,_that.telefone,_that.email,_that.observacao,_that.nomeErro,_that.telefoneErro,_that.emailErro,_that.geralErro,_that.isLoading,_that.isSuccess,_that.camposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _AdicionarClienteState implements AdicionarClienteState {
  const _AdicionarClienteState({this.nome = '', this.telefone = '', this.email = '', this.observacao, this.nomeErro, this.telefoneErro, this.emailErro, this.geralErro, this.isLoading = false, this.isSuccess = false, this.camposValidos = false});
  

@override@JsonKey() final  String nome;
@override@JsonKey() final  String telefone;
@override@JsonKey() final  String email;
@override final  String? observacao;
@override final  String? nomeErro;
@override final  String? telefoneErro;
@override final  String? emailErro;
@override final  String? geralErro;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSuccess;
@override@JsonKey() final  bool camposValidos;

/// Create a copy of AdicionarClienteState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdicionarClienteStateCopyWith<_AdicionarClienteState> get copyWith => __$AdicionarClienteStateCopyWithImpl<_AdicionarClienteState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdicionarClienteState&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.telefone, telefone) || other.telefone == telefone)&&(identical(other.email, email) || other.email == email)&&(identical(other.observacao, observacao) || other.observacao == observacao)&&(identical(other.nomeErro, nomeErro) || other.nomeErro == nomeErro)&&(identical(other.telefoneErro, telefoneErro) || other.telefoneErro == telefoneErro)&&(identical(other.emailErro, emailErro) || other.emailErro == emailErro)&&(identical(other.geralErro, geralErro) || other.geralErro == geralErro)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,nome,telefone,email,observacao,nomeErro,telefoneErro,emailErro,geralErro,isLoading,isSuccess,camposValidos);

@override
String toString() {
  return 'AdicionarClienteState(nome: $nome, telefone: $telefone, email: $email, observacao: $observacao, nomeErro: $nomeErro, telefoneErro: $telefoneErro, emailErro: $emailErro, geralErro: $geralErro, isLoading: $isLoading, isSuccess: $isSuccess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class _$AdicionarClienteStateCopyWith<$Res> implements $AdicionarClienteStateCopyWith<$Res> {
  factory _$AdicionarClienteStateCopyWith(_AdicionarClienteState value, $Res Function(_AdicionarClienteState) _then) = __$AdicionarClienteStateCopyWithImpl;
@override @useResult
$Res call({
 String nome, String telefone, String email, String? observacao, String? nomeErro, String? telefoneErro, String? emailErro, String? geralErro, bool isLoading, bool isSuccess, bool camposValidos
});




}
/// @nodoc
class __$AdicionarClienteStateCopyWithImpl<$Res>
    implements _$AdicionarClienteStateCopyWith<$Res> {
  __$AdicionarClienteStateCopyWithImpl(this._self, this._then);

  final _AdicionarClienteState _self;
  final $Res Function(_AdicionarClienteState) _then;

/// Create a copy of AdicionarClienteState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nome = null,Object? telefone = null,Object? email = null,Object? observacao = freezed,Object? nomeErro = freezed,Object? telefoneErro = freezed,Object? emailErro = freezed,Object? geralErro = freezed,Object? isLoading = null,Object? isSuccess = null,Object? camposValidos = null,}) {
  return _then(_AdicionarClienteState(
nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,telefone: null == telefone ? _self.telefone : telefone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,observacao: freezed == observacao ? _self.observacao : observacao // ignore: cast_nullable_to_non_nullable
as String?,nomeErro: freezed == nomeErro ? _self.nomeErro : nomeErro // ignore: cast_nullable_to_non_nullable
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
