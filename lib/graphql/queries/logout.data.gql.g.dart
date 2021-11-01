// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLogoutData> _$gLogoutDataSerializer = new _$GLogoutDataSerializer();

class _$GLogoutDataSerializer implements StructuredSerializer<GLogoutData> {
  @override
  final Iterable<Type> types = const [GLogoutData, _$GLogoutData];
  @override
  final String wireName = 'GLogoutData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLogoutData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'logout',
      serializers.serialize(object.logout, specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GLogoutData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLogoutDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'logout':
          result.logout = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GLogoutData extends GLogoutData {
  @override
  final String G__typename;
  @override
  final bool logout;

  factory _$GLogoutData([void Function(GLogoutDataBuilder)? updates]) =>
      (new GLogoutDataBuilder()..update(updates)).build();

  _$GLogoutData._({required this.G__typename, required this.logout})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GLogoutData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(logout, 'GLogoutData', 'logout');
  }

  @override
  GLogoutData rebuild(void Function(GLogoutDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLogoutDataBuilder toBuilder() => new GLogoutDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLogoutData &&
        G__typename == other.G__typename &&
        logout == other.logout;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), logout.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLogoutData')
          ..add('G__typename', G__typename)
          ..add('logout', logout))
        .toString();
  }
}

class GLogoutDataBuilder implements Builder<GLogoutData, GLogoutDataBuilder> {
  _$GLogoutData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _logout;
  bool? get logout => _$this._logout;
  set logout(bool? logout) => _$this._logout = logout;

  GLogoutDataBuilder() {
    GLogoutData._initializeBuilder(this);
  }

  GLogoutDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _logout = $v.logout;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLogoutData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLogoutData;
  }

  @override
  void update(void Function(GLogoutDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLogoutData build() {
    final _$result = _$v ??
        new _$GLogoutData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GLogoutData', 'G__typename'),
            logout: BuiltValueNullFieldError.checkNotNull(
                logout, 'GLogoutData', 'logout'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
