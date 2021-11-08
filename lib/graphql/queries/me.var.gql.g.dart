// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMeVars> _$gMeVarsSerializer = new _$GMeVarsSerializer();

class _$GMeVarsSerializer implements StructuredSerializer<GMeVars> {
  @override
  final Iterable<Type> types = const [GMeVars, _$GMeVars];
  @override
  final String wireName = 'GMeVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GMeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GMeVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GMeVarsBuilder().build();
  }
}

class _$GMeVars extends GMeVars {
  factory _$GMeVars([void Function(GMeVarsBuilder)? updates]) =>
      (new GMeVarsBuilder()..update(updates)).build();

  _$GMeVars._() : super._();

  @override
  GMeVars rebuild(void Function(GMeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMeVarsBuilder toBuilder() => new GMeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMeVars;
  }

  @override
  int get hashCode {
    return 95737369;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GMeVars').toString();
  }
}

class GMeVarsBuilder implements Builder<GMeVars, GMeVarsBuilder> {
  _$GMeVars? _$v;

  GMeVarsBuilder();

  @override
  void replace(GMeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMeVars;
  }

  @override
  void update(void Function(GMeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GMeVars build() {
    final _$result = _$v ?? new _$GMeVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
