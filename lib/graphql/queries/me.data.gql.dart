// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:aucares/graphql/schema.schema.gql.dart' as _i2;
import 'package:aucares/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'me.data.gql.g.dart';

abstract class GMeData implements Built<GMeData, GMeDataBuilder> {
  GMeData._();

  factory GMeData([Function(GMeDataBuilder b) updates]) = _$GMeData;

  static void _initializeBuilder(GMeDataBuilder b) => b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMeData_me? get me;
  static Serializer<GMeData> get serializer => _$gMeDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GMeData.serializer, this)
          as Map<String, dynamic>);
  static GMeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GMeData.serializer, json);
}

abstract class GMeData_me implements Built<GMeData_me, GMeData_meBuilder> {
  GMeData_me._();

  factory GMeData_me([Function(GMeData_meBuilder b) updates]) = _$GMeData_me;

  static void _initializeBuilder(GMeData_meBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GUUID get id;
  String get email;
  _i2.GDateTime get createdAt;
  _i2.GDateTime get updatedAt;
  _i2.GRole get role;
  static Serializer<GMeData_me> get serializer => _$gMeDataMeSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GMeData_me.serializer, this)
          as Map<String, dynamic>);
  static GMeData_me? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GMeData_me.serializer, json);
}
