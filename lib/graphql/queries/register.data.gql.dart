// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:aucares/graphql/schema.schema.gql.dart' as _i2;
import 'package:aucares/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'register.data.gql.g.dart';

abstract class GRegisterData
    implements Built<GRegisterData, GRegisterDataBuilder> {
  GRegisterData._();

  factory GRegisterData([Function(GRegisterDataBuilder b) updates]) =
      _$GRegisterData;

  static void _initializeBuilder(GRegisterDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRegisterData_register get register;
  static Serializer<GRegisterData> get serializer => _$gRegisterDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRegisterData.serializer, this)
          as Map<String, dynamic>);
  static GRegisterData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRegisterData.serializer, json);
}

abstract class GRegisterData_register
    implements Built<GRegisterData_register, GRegisterData_registerBuilder> {
  GRegisterData_register._();

  factory GRegisterData_register(
          [Function(GRegisterData_registerBuilder b) updates]) =
      _$GRegisterData_register;

  static void _initializeBuilder(GRegisterData_registerBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GUUID get id;
  String get email;
  _i2.GDateTime get createdAt;
  _i2.GDateTime get updatedAt;
  _i2.GRole get role;
  static Serializer<GRegisterData_register> get serializer =>
      _$gRegisterDataRegisterSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRegisterData_register.serializer, this)
          as Map<String, dynamic>);
  static GRegisterData_register? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRegisterData_register.serializer, json);
}
