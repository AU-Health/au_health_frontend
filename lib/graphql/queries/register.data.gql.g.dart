// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRegisterData> _$gRegisterDataSerializer =
    new _$GRegisterDataSerializer();
Serializer<GRegisterData_register> _$gRegisterDataRegisterSerializer =
    new _$GRegisterData_registerSerializer();

class _$GRegisterDataSerializer implements StructuredSerializer<GRegisterData> {
  @override
  final Iterable<Type> types = const [GRegisterData, _$GRegisterData];
  @override
  final String wireName = 'GRegisterData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRegisterData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'register',
      serializers.serialize(object.register,
          specifiedType: const FullType(GRegisterData_register)),
    ];

    return result;
  }

  @override
  GRegisterData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRegisterDataBuilder();

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
        case 'register':
          result.register.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GRegisterData_register))!
              as GRegisterData_register);
          break;
      }
    }

    return result.build();
  }
}

class _$GRegisterData_registerSerializer
    implements StructuredSerializer<GRegisterData_register> {
  @override
  final Iterable<Type> types = const [
    GRegisterData_register,
    _$GRegisterData_register
  ];
  @override
  final String wireName = 'GRegisterData_register';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRegisterData_register object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id,
          specifiedType: const FullType(_i2.GUUID)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(_i2.GDateTime)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(_i2.GDateTime)),
      'role',
      serializers.serialize(object.role,
          specifiedType: const FullType(_i2.GRole)),
    ];

    return result;
  }

  @override
  GRegisterData_register deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRegisterData_registerBuilder();

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
        case 'id':
          result.id.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GUUID))! as _i2.GUUID);
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'updatedAt':
          result.updatedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(_i2.GRole)) as _i2.GRole;
          break;
      }
    }

    return result.build();
  }
}

class _$GRegisterData extends GRegisterData {
  @override
  final String G__typename;
  @override
  final GRegisterData_register register;

  factory _$GRegisterData([void Function(GRegisterDataBuilder)? updates]) =>
      (new GRegisterDataBuilder()..update(updates)).build();

  _$GRegisterData._({required this.G__typename, required this.register})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRegisterData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        register, 'GRegisterData', 'register');
  }

  @override
  GRegisterData rebuild(void Function(GRegisterDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRegisterDataBuilder toBuilder() => new GRegisterDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRegisterData &&
        G__typename == other.G__typename &&
        register == other.register;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), register.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRegisterData')
          ..add('G__typename', G__typename)
          ..add('register', register))
        .toString();
  }
}

class GRegisterDataBuilder
    implements Builder<GRegisterData, GRegisterDataBuilder> {
  _$GRegisterData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GRegisterData_registerBuilder? _register;
  GRegisterData_registerBuilder get register =>
      _$this._register ??= new GRegisterData_registerBuilder();
  set register(GRegisterData_registerBuilder? register) =>
      _$this._register = register;

  GRegisterDataBuilder() {
    GRegisterData._initializeBuilder(this);
  }

  GRegisterDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _register = $v.register.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRegisterData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRegisterData;
  }

  @override
  void update(void Function(GRegisterDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRegisterData build() {
    _$GRegisterData _$result;
    try {
      _$result = _$v ??
          new _$GRegisterData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GRegisterData', 'G__typename'),
              register: register.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'register';
        register.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GRegisterData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRegisterData_register extends GRegisterData_register {
  @override
  final String G__typename;
  @override
  final _i2.GUUID id;
  @override
  final String email;
  @override
  final _i2.GDateTime createdAt;
  @override
  final _i2.GDateTime updatedAt;
  @override
  final _i2.GRole role;

  factory _$GRegisterData_register(
          [void Function(GRegisterData_registerBuilder)? updates]) =>
      (new GRegisterData_registerBuilder()..update(updates)).build();

  _$GRegisterData_register._(
      {required this.G__typename,
      required this.id,
      required this.email,
      required this.createdAt,
      required this.updatedAt,
      required this.role})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRegisterData_register', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GRegisterData_register', 'id');
    BuiltValueNullFieldError.checkNotNull(
        email, 'GRegisterData_register', 'email');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, 'GRegisterData_register', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, 'GRegisterData_register', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(
        role, 'GRegisterData_register', 'role');
  }

  @override
  GRegisterData_register rebuild(
          void Function(GRegisterData_registerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRegisterData_registerBuilder toBuilder() =>
      new GRegisterData_registerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRegisterData_register &&
        G__typename == other.G__typename &&
        id == other.id &&
        email == other.email &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        role == other.role;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                    email.hashCode),
                createdAt.hashCode),
            updatedAt.hashCode),
        role.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRegisterData_register')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('email', email)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('role', role))
        .toString();
  }
}

class GRegisterData_registerBuilder
    implements Builder<GRegisterData_register, GRegisterData_registerBuilder> {
  _$GRegisterData_register? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GUUIDBuilder? _id;
  _i2.GUUIDBuilder get id => _$this._id ??= new _i2.GUUIDBuilder();
  set id(_i2.GUUIDBuilder? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  _i2.GDateTimeBuilder? _createdAt;
  _i2.GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateTimeBuilder();
  set createdAt(_i2.GDateTimeBuilder? createdAt) =>
      _$this._createdAt = createdAt;

  _i2.GDateTimeBuilder? _updatedAt;
  _i2.GDateTimeBuilder get updatedAt =>
      _$this._updatedAt ??= new _i2.GDateTimeBuilder();
  set updatedAt(_i2.GDateTimeBuilder? updatedAt) =>
      _$this._updatedAt = updatedAt;

  _i2.GRole? _role;
  _i2.GRole? get role => _$this._role;
  set role(_i2.GRole? role) => _$this._role = role;

  GRegisterData_registerBuilder() {
    GRegisterData_register._initializeBuilder(this);
  }

  GRegisterData_registerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _email = $v.email;
      _createdAt = $v.createdAt.toBuilder();
      _updatedAt = $v.updatedAt.toBuilder();
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRegisterData_register other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRegisterData_register;
  }

  @override
  void update(void Function(GRegisterData_registerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRegisterData_register build() {
    _$GRegisterData_register _$result;
    try {
      _$result = _$v ??
          new _$GRegisterData_register._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GRegisterData_register', 'G__typename'),
              id: id.build(),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, 'GRegisterData_register', 'email'),
              createdAt: createdAt.build(),
              updatedAt: updatedAt.build(),
              role: BuiltValueNullFieldError.checkNotNull(
                  role, 'GRegisterData_register', 'role'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();

        _$failedField = 'createdAt';
        createdAt.build();
        _$failedField = 'updatedAt';
        updatedAt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GRegisterData_register', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
