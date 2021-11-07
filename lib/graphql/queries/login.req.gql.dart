// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:aucares/graphql/queries/login.ast.gql.dart' as _i5;
import 'package:aucares/graphql/queries/login.data.gql.dart' as _i2;
import 'package:aucares/graphql/queries/login.var.gql.dart' as _i3;
import 'package:aucares/graphql/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'login.req.gql.g.dart';

abstract class GLoginReq
    implements
        Built<GLoginReq, GLoginReqBuilder>,
        _i1.OperationRequest<_i2.GLoginData, _i3.GLoginVars> {
  GLoginReq._();

  factory GLoginReq([Function(GLoginReqBuilder b) updates]) = _$GLoginReq;

  static void _initializeBuilder(GLoginReqBuilder b) => b
    ..operation = _i4.Operation(document: _i5.document, operationName: 'Login')
    ..executeOnListen = true;
  _i3.GLoginVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GLoginData? Function(_i2.GLoginData?, _i2.GLoginData?)? get updateResult;
  _i2.GLoginData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GLoginData? parseData(Map<String, dynamic> json) =>
      _i2.GLoginData.fromJson(json);
  static Serializer<GLoginReq> get serializer => _$gLoginReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GLoginReq.serializer, this)
          as Map<String, dynamic>);
  static GLoginReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GLoginReq.serializer, json);
}
