// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRegisterVars> _$gRegisterVarsSerializer =
    new _$GRegisterVarsSerializer();

class _$GRegisterVarsSerializer implements StructuredSerializer<GRegisterVars> {
  @override
  final Iterable<Type> types = const [GRegisterVars, _$GRegisterVars];
  @override
  final String wireName = 'GRegisterVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRegisterVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GNewUser)),
    ];

    return result;
  }

  @override
  GRegisterVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRegisterVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i1.GNewUser))! as _i1.GNewUser);
          break;
      }
    }

    return result.build();
  }
}

class _$GRegisterVars extends GRegisterVars {
  @override
  final _i1.GNewUser input;

  factory _$GRegisterVars([void Function(GRegisterVarsBuilder)? updates]) =>
      (new GRegisterVarsBuilder()..update(updates)).build();

  _$GRegisterVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(input, 'GRegisterVars', 'input');
  }

  @override
  GRegisterVars rebuild(void Function(GRegisterVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRegisterVarsBuilder toBuilder() => new GRegisterVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRegisterVars && input == other.input;
  }

  @override
  int get hashCode {
    return $jf($jc(0, input.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRegisterVars')..add('input', input))
        .toString();
  }
}

class GRegisterVarsBuilder
    implements Builder<GRegisterVars, GRegisterVarsBuilder> {
  _$GRegisterVars? _$v;

  _i1.GNewUserBuilder? _input;
  _i1.GNewUserBuilder get input => _$this._input ??= new _i1.GNewUserBuilder();
  set input(_i1.GNewUserBuilder? input) => _$this._input = input;

  GRegisterVarsBuilder();

  GRegisterVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRegisterVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRegisterVars;
  }

  @override
  void update(void Function(GRegisterVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRegisterVars build() {
    _$GRegisterVars _$result;
    try {
      _$result = _$v ?? new _$GRegisterVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GRegisterVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
