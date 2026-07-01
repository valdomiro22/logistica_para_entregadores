// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adicionar_comprovante_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdicionarComprovanteState {

 String get entregaId; String get clienteId; String get foto; String get assinatura; String get observacao; String? get clienteIdErro; String? get fotoErro; String? get assinaturaErro; String? get observacaoErro; String? get entregaIdErro; String? get geralErro; bool get isLoading; bool get isSuccess; bool get camposValidos;
/// Create a copy of AdicionarComprovanteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdicionarComprovanteStateCopyWith<AdicionarComprovanteState> get copyWith => _$AdicionarComprovanteStateCopyWithImpl<AdicionarComprovanteState>(this as AdicionarComprovanteState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdicionarComprovanteState&&(identical(other.entregaId, entregaId) || other.entregaId == entregaId)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.foto, foto) || other.foto == foto)&&(identical(other.assinatura, assinatura) || other.assinatura == assinatura)&&(identical(other.observacao, observacao) || other.observacao == observacao)&&(identical(other.clienteIdErro, clienteIdErro) || other.clienteIdErro == clienteIdErro)&&(identical(other.fotoErro, fotoErro) || other.fotoErro == fotoErro)&&(identical(other.assinaturaErro, assinaturaErro) || other.assinaturaErro == assinaturaErro)&&(identical(other.observacaoErro, observacaoErro) || other.observacaoErro == observacaoErro)&&(identical(other.entregaIdErro, entregaIdErro) || other.entregaIdErro == entregaIdErro)&&(identical(other.geralErro, geralErro) || other.geralErro == geralErro)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,entregaId,clienteId,foto,assinatura,observacao,clienteIdErro,fotoErro,assinaturaErro,observacaoErro,entregaIdErro,geralErro,isLoading,isSuccess,camposValidos);

@override
String toString() {
  return 'AdicionarComprovanteState(entregaId: $entregaId, clienteId: $clienteId, foto: $foto, assinatura: $assinatura, observacao: $observacao, clienteIdErro: $clienteIdErro, fotoErro: $fotoErro, assinaturaErro: $assinaturaErro, observacaoErro: $observacaoErro, entregaIdErro: $entregaIdErro, geralErro: $geralErro, isLoading: $isLoading, isSuccess: $isSuccess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class $AdicionarComprovanteStateCopyWith<$Res>  {
  factory $AdicionarComprovanteStateCopyWith(AdicionarComprovanteState value, $Res Function(AdicionarComprovanteState) _then) = _$AdicionarComprovanteStateCopyWithImpl;
@useResult
$Res call({
 String entregaId, String clienteId, String foto, String assinatura, String observacao, String? clienteIdErro, String? fotoErro, String? assinaturaErro, String? observacaoErro, String? entregaIdErro, String? geralErro, bool isLoading, bool isSuccess, bool camposValidos
});




}
/// @nodoc
class _$AdicionarComprovanteStateCopyWithImpl<$Res>
    implements $AdicionarComprovanteStateCopyWith<$Res> {
  _$AdicionarComprovanteStateCopyWithImpl(this._self, this._then);

  final AdicionarComprovanteState _self;
  final $Res Function(AdicionarComprovanteState) _then;

/// Create a copy of AdicionarComprovanteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? entregaId = null,Object? clienteId = null,Object? foto = null,Object? assinatura = null,Object? observacao = null,Object? clienteIdErro = freezed,Object? fotoErro = freezed,Object? assinaturaErro = freezed,Object? observacaoErro = freezed,Object? entregaIdErro = freezed,Object? geralErro = freezed,Object? isLoading = null,Object? isSuccess = null,Object? camposValidos = null,}) {
  return _then(_self.copyWith(
entregaId: null == entregaId ? _self.entregaId : entregaId // ignore: cast_nullable_to_non_nullable
as String,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,foto: null == foto ? _self.foto : foto // ignore: cast_nullable_to_non_nullable
as String,assinatura: null == assinatura ? _self.assinatura : assinatura // ignore: cast_nullable_to_non_nullable
as String,observacao: null == observacao ? _self.observacao : observacao // ignore: cast_nullable_to_non_nullable
as String,clienteIdErro: freezed == clienteIdErro ? _self.clienteIdErro : clienteIdErro // ignore: cast_nullable_to_non_nullable
as String?,fotoErro: freezed == fotoErro ? _self.fotoErro : fotoErro // ignore: cast_nullable_to_non_nullable
as String?,assinaturaErro: freezed == assinaturaErro ? _self.assinaturaErro : assinaturaErro // ignore: cast_nullable_to_non_nullable
as String?,observacaoErro: freezed == observacaoErro ? _self.observacaoErro : observacaoErro // ignore: cast_nullable_to_non_nullable
as String?,entregaIdErro: freezed == entregaIdErro ? _self.entregaIdErro : entregaIdErro // ignore: cast_nullable_to_non_nullable
as String?,geralErro: freezed == geralErro ? _self.geralErro : geralErro // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AdicionarComprovanteState].
extension AdicionarComprovanteStatePatterns on AdicionarComprovanteState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdicionarComprovanteState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdicionarComprovanteState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdicionarComprovanteState value)  $default,){
final _that = this;
switch (_that) {
case _AdicionarComprovanteState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdicionarComprovanteState value)?  $default,){
final _that = this;
switch (_that) {
case _AdicionarComprovanteState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String entregaId,  String clienteId,  String foto,  String assinatura,  String observacao,  String? clienteIdErro,  String? fotoErro,  String? assinaturaErro,  String? observacaoErro,  String? entregaIdErro,  String? geralErro,  bool isLoading,  bool isSuccess,  bool camposValidos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdicionarComprovanteState() when $default != null:
return $default(_that.entregaId,_that.clienteId,_that.foto,_that.assinatura,_that.observacao,_that.clienteIdErro,_that.fotoErro,_that.assinaturaErro,_that.observacaoErro,_that.entregaIdErro,_that.geralErro,_that.isLoading,_that.isSuccess,_that.camposValidos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String entregaId,  String clienteId,  String foto,  String assinatura,  String observacao,  String? clienteIdErro,  String? fotoErro,  String? assinaturaErro,  String? observacaoErro,  String? entregaIdErro,  String? geralErro,  bool isLoading,  bool isSuccess,  bool camposValidos)  $default,) {final _that = this;
switch (_that) {
case _AdicionarComprovanteState():
return $default(_that.entregaId,_that.clienteId,_that.foto,_that.assinatura,_that.observacao,_that.clienteIdErro,_that.fotoErro,_that.assinaturaErro,_that.observacaoErro,_that.entregaIdErro,_that.geralErro,_that.isLoading,_that.isSuccess,_that.camposValidos);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String entregaId,  String clienteId,  String foto,  String assinatura,  String observacao,  String? clienteIdErro,  String? fotoErro,  String? assinaturaErro,  String? observacaoErro,  String? entregaIdErro,  String? geralErro,  bool isLoading,  bool isSuccess,  bool camposValidos)?  $default,) {final _that = this;
switch (_that) {
case _AdicionarComprovanteState() when $default != null:
return $default(_that.entregaId,_that.clienteId,_that.foto,_that.assinatura,_that.observacao,_that.clienteIdErro,_that.fotoErro,_that.assinaturaErro,_that.observacaoErro,_that.entregaIdErro,_that.geralErro,_that.isLoading,_that.isSuccess,_that.camposValidos);case _:
  return null;

}
}

}

/// @nodoc


class _AdicionarComprovanteState implements AdicionarComprovanteState {
  const _AdicionarComprovanteState({this.entregaId = '', this.clienteId = '', this.foto = '', this.assinatura = '', this.observacao = '', this.clienteIdErro, this.fotoErro, this.assinaturaErro, this.observacaoErro, this.entregaIdErro, this.geralErro, this.isLoading = false, this.isSuccess = false, this.camposValidos = false});
  

@override@JsonKey() final  String entregaId;
@override@JsonKey() final  String clienteId;
@override@JsonKey() final  String foto;
@override@JsonKey() final  String assinatura;
@override@JsonKey() final  String observacao;
@override final  String? clienteIdErro;
@override final  String? fotoErro;
@override final  String? assinaturaErro;
@override final  String? observacaoErro;
@override final  String? entregaIdErro;
@override final  String? geralErro;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSuccess;
@override@JsonKey() final  bool camposValidos;

/// Create a copy of AdicionarComprovanteState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdicionarComprovanteStateCopyWith<_AdicionarComprovanteState> get copyWith => __$AdicionarComprovanteStateCopyWithImpl<_AdicionarComprovanteState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdicionarComprovanteState&&(identical(other.entregaId, entregaId) || other.entregaId == entregaId)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.foto, foto) || other.foto == foto)&&(identical(other.assinatura, assinatura) || other.assinatura == assinatura)&&(identical(other.observacao, observacao) || other.observacao == observacao)&&(identical(other.clienteIdErro, clienteIdErro) || other.clienteIdErro == clienteIdErro)&&(identical(other.fotoErro, fotoErro) || other.fotoErro == fotoErro)&&(identical(other.assinaturaErro, assinaturaErro) || other.assinaturaErro == assinaturaErro)&&(identical(other.observacaoErro, observacaoErro) || other.observacaoErro == observacaoErro)&&(identical(other.entregaIdErro, entregaIdErro) || other.entregaIdErro == entregaIdErro)&&(identical(other.geralErro, geralErro) || other.geralErro == geralErro)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.camposValidos, camposValidos) || other.camposValidos == camposValidos));
}


@override
int get hashCode => Object.hash(runtimeType,entregaId,clienteId,foto,assinatura,observacao,clienteIdErro,fotoErro,assinaturaErro,observacaoErro,entregaIdErro,geralErro,isLoading,isSuccess,camposValidos);

@override
String toString() {
  return 'AdicionarComprovanteState(entregaId: $entregaId, clienteId: $clienteId, foto: $foto, assinatura: $assinatura, observacao: $observacao, clienteIdErro: $clienteIdErro, fotoErro: $fotoErro, assinaturaErro: $assinaturaErro, observacaoErro: $observacaoErro, entregaIdErro: $entregaIdErro, geralErro: $geralErro, isLoading: $isLoading, isSuccess: $isSuccess, camposValidos: $camposValidos)';
}


}

/// @nodoc
abstract mixin class _$AdicionarComprovanteStateCopyWith<$Res> implements $AdicionarComprovanteStateCopyWith<$Res> {
  factory _$AdicionarComprovanteStateCopyWith(_AdicionarComprovanteState value, $Res Function(_AdicionarComprovanteState) _then) = __$AdicionarComprovanteStateCopyWithImpl;
@override @useResult
$Res call({
 String entregaId, String clienteId, String foto, String assinatura, String observacao, String? clienteIdErro, String? fotoErro, String? assinaturaErro, String? observacaoErro, String? entregaIdErro, String? geralErro, bool isLoading, bool isSuccess, bool camposValidos
});




}
/// @nodoc
class __$AdicionarComprovanteStateCopyWithImpl<$Res>
    implements _$AdicionarComprovanteStateCopyWith<$Res> {
  __$AdicionarComprovanteStateCopyWithImpl(this._self, this._then);

  final _AdicionarComprovanteState _self;
  final $Res Function(_AdicionarComprovanteState) _then;

/// Create a copy of AdicionarComprovanteState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? entregaId = null,Object? clienteId = null,Object? foto = null,Object? assinatura = null,Object? observacao = null,Object? clienteIdErro = freezed,Object? fotoErro = freezed,Object? assinaturaErro = freezed,Object? observacaoErro = freezed,Object? entregaIdErro = freezed,Object? geralErro = freezed,Object? isLoading = null,Object? isSuccess = null,Object? camposValidos = null,}) {
  return _then(_AdicionarComprovanteState(
entregaId: null == entregaId ? _self.entregaId : entregaId // ignore: cast_nullable_to_non_nullable
as String,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,foto: null == foto ? _self.foto : foto // ignore: cast_nullable_to_non_nullable
as String,assinatura: null == assinatura ? _self.assinatura : assinatura // ignore: cast_nullable_to_non_nullable
as String,observacao: null == observacao ? _self.observacao : observacao // ignore: cast_nullable_to_non_nullable
as String,clienteIdErro: freezed == clienteIdErro ? _self.clienteIdErro : clienteIdErro // ignore: cast_nullable_to_non_nullable
as String?,fotoErro: freezed == fotoErro ? _self.fotoErro : fotoErro // ignore: cast_nullable_to_non_nullable
as String?,assinaturaErro: freezed == assinaturaErro ? _self.assinaturaErro : assinaturaErro // ignore: cast_nullable_to_non_nullable
as String?,observacaoErro: freezed == observacaoErro ? _self.observacaoErro : observacaoErro // ignore: cast_nullable_to_non_nullable
as String?,entregaIdErro: freezed == entregaIdErro ? _self.entregaIdErro : entregaIdErro // ignore: cast_nullable_to_non_nullable
as String?,geralErro: freezed == geralErro ? _self.geralErro : geralErro // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,camposValidos: null == camposValidos ? _self.camposValidos : camposValidos // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
