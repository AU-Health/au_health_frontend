// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLogoutVars> _$gLogoutVarsSerializer = new _$GLogoutVarsSerializer();

class _$GLogoutVarsSerializer implements StructuredSerializer<GLogoutVars> {
  @override
  final Iterable<Type> types = const [GLogoutVars, _$GLogoutVars];
  @override
  final String wireName = 'GLogoutVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLogoutVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GLogoutVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GLogoutVarsBuilder().build();
  }
}

class _$GLogoutVars extends GLogoutVars {
  factory _$GLogoutVars([void Function(GLogoutVarsBuilder)? updates]) =>
      (new GLogoutVarsBuilder()..update(updates)).build();

  _$GLogoutVars._() : super._();

  @override
  GLogoutVars rebuild(void Function(GLogoutVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLogoutVarsBuilder toBuilder() => new GLogoutVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLogoutVars;
  }

  @override
  int get hashCode {
    return 107946852;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GLogoutVars').toString();
  }
}

class GLogoutVarsBuilder implements Builder<GLogoutVars, GLogoutVarsBuilder> {
  _$GLogoutVars? _$v;

  GLogoutVarsBuilder();

  @override
  void replace(GLogoutVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLogoutVars;
  }

  @override
  void update(void Function(GLogoutVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLogoutVars build() {
    final _$result = _$v ?? new _$GLogoutVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
