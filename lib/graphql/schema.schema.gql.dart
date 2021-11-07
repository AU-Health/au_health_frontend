// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:aucares/graphql/serializers.gql.dart' as _i2;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i1;

part 'schema.schema.gql.g.dart';

abstract class GDateTime implements Built<GDateTime, GDateTimeBuilder> {
  GDateTime._();

  factory GDateTime([String? value]) =>
      _$GDateTime((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDateTime> get serializer =>
      _i1.DefaultScalarSerializer<GDateTime>(
          (Object serialized) => GDateTime((serialized as String?)));
}

abstract class GLoginUser implements Built<GLoginUser, GLoginUserBuilder> {
  GLoginUser._();

  factory GLoginUser([Function(GLoginUserBuilder b) updates]) = _$GLoginUser;

  String get email;
  String get password;
  static Serializer<GLoginUser> get serializer => _$gLoginUserSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GLoginUser.serializer, this)
          as Map<String, dynamic>);
  static GLoginUser? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GLoginUser.serializer, json);
}

abstract class GNewAnswer implements Built<GNewAnswer, GNewAnswerBuilder> {
  GNewAnswer._();

  factory GNewAnswer([Function(GNewAnswerBuilder b) updates]) = _$GNewAnswer;

  GUUID get questionId;
  String get answer;
  static Serializer<GNewAnswer> get serializer => _$gNewAnswerSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GNewAnswer.serializer, this)
          as Map<String, dynamic>);
  static GNewAnswer? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GNewAnswer.serializer, json);
}

abstract class GNewQuestion
    implements Built<GNewQuestion, GNewQuestionBuilder> {
  GNewQuestion._();

  factory GNewQuestion([Function(GNewQuestionBuilder b) updates]) =
      _$GNewQuestion;

  String get question;
  String get category;
  String get responseType;
  BuiltList<String>? get responses;
  static Serializer<GNewQuestion> get serializer => _$gNewQuestionSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GNewQuestion.serializer, this)
          as Map<String, dynamic>);
  static GNewQuestion? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GNewQuestion.serializer, json);
}

abstract class GNewSurveyResponse
    implements Built<GNewSurveyResponse, GNewSurveyResponseBuilder> {
  GNewSurveyResponse._();

  factory GNewSurveyResponse([Function(GNewSurveyResponseBuilder b) updates]) =
      _$GNewSurveyResponse;

  BuiltList<GNewAnswer> get answers;
  static Serializer<GNewSurveyResponse> get serializer =>
      _$gNewSurveyResponseSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GNewSurveyResponse.serializer, this)
          as Map<String, dynamic>);
  static GNewSurveyResponse? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GNewSurveyResponse.serializer, json);
}

abstract class GNewUser implements Built<GNewUser, GNewUserBuilder> {
  GNewUser._();

  factory GNewUser([Function(GNewUserBuilder b) updates]) = _$GNewUser;

  String get email;
  String get password;
  static Serializer<GNewUser> get serializer => _$gNewUserSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GNewUser.serializer, this)
          as Map<String, dynamic>);
  static GNewUser? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GNewUser.serializer, json);
}

class GRole extends EnumClass {
  const GRole._(String name) : super(name);

  static const GRole USER = _$gRoleUSER;

  static const GRole ADMIN = _$gRoleADMIN;

  static Serializer<GRole> get serializer => _$gRoleSerializer;
  static BuiltSet<GRole> get values => _$gRoleValues;
  static GRole valueOf(String name) => _$gRoleValueOf(name);
}

abstract class GUUID implements Built<GUUID, GUUIDBuilder> {
  GUUID._();

  factory GUUID([String? value]) =>
      _$GUUID((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GUUID> get serializer => _i1.DefaultScalarSerializer<GUUID>(
      (Object serialized) => GUUID((serialized as String?)));
}
