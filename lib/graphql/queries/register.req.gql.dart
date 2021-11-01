// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:aucares/graphql/queries/register.ast.gql.dart' as _i5;
import 'package:aucares/graphql/queries/register.data.gql.dart' as _i2;
import 'package:aucares/graphql/queries/register.var.gql.dart' as _i3;
import 'package:aucares/graphql/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'register.req.gql.g.dart';

abstract class GRegisterReq
    implements
        Built<GRegisterReq, GRegisterReqBuilder>,
        _i1.OperationRequest<_i2.GRegisterData, _i3.GRegisterVars> {
  GRegisterReq._();

  factory GRegisterReq([Function(GRegisterReqBuilder b) updates]) =
      _$GRegisterReq;

  static void _initializeBuilder(GRegisterReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'Register')
    ..executeOnListen = true;
  _i3.GRegisterVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GRegisterData? Function(_i2.GRegisterData?, _i2.GRegisterData?)?
      get updateResult;
  _i2.GRegisterData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GRegisterData? parseData(Map<String, dynamic> json) =>
      _i2.GRegisterData.fromJson(json);
  static Serializer<GRegisterReq> get serializer => _$gRegisterReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GRegisterReq.serializer, this)
          as Map<String, dynamic>);
  static GRegisterReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GRegisterReq.serializer, json);
}
