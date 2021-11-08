// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:aucares/graphql/queries/me.ast.gql.dart' as _i5;
import 'package:aucares/graphql/queries/me.data.gql.dart' as _i2;
import 'package:aucares/graphql/queries/me.var.gql.dart' as _i3;
import 'package:aucares/graphql/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'me.req.gql.g.dart';

abstract class GMeReq
    implements
        Built<GMeReq, GMeReqBuilder>,
        _i1.OperationRequest<_i2.GMeData, _i3.GMeVars> {
  GMeReq._();

  factory GMeReq([Function(GMeReqBuilder b) updates]) = _$GMeReq;

  static void _initializeBuilder(GMeReqBuilder b) => b
    ..operation = _i4.Operation(document: _i5.document, operationName: 'Me')
    ..executeOnListen = true;
  _i3.GMeVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GMeData? Function(_i2.GMeData?, _i2.GMeData?)? get updateResult;
  _i2.GMeData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GMeData? parseData(Map<String, dynamic> json) =>
      _i2.GMeData.fromJson(json);
  static Serializer<GMeReq> get serializer => _$gMeReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GMeReq.serializer, this)
          as Map<String, dynamic>);
  static GMeReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GMeReq.serializer, json);
}
