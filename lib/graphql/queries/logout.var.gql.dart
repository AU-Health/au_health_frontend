// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:aucares/graphql/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'logout.var.gql.g.dart';

abstract class GLogoutVars implements Built<GLogoutVars, GLogoutVarsBuilder> {
  GLogoutVars._();

  factory GLogoutVars([Function(GLogoutVarsBuilder b) updates]) = _$GLogoutVars;

  static Serializer<GLogoutVars> get serializer => _$gLogoutVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLogoutVars.serializer, this)
          as Map<String, dynamic>);
  static GLogoutVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GLogoutVars.serializer, json);
}
