// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:aucares/graphql/queries/logout.ast.gql.dart' as _i5;
import 'package:aucares/graphql/queries/logout.data.gql.dart' as _i2;
import 'package:aucares/graphql/queries/logout.var.gql.dart' as _i3;
import 'package:aucares/graphql/serializers.gql.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'logout.req.gql.g.dart';

abstract class GLogoutReq
    implements
        Built<GLogoutReq, GLogoutReqBuilder>,
        _i1.OperationRequest<_i2.GLogoutData, _i3.GLogoutVars> {
  GLogoutReq._();

  factory GLogoutReq([Function(GLogoutReqBuilder b) updates]) = _$GLogoutReq;

  static void _initializeBuilder(GLogoutReqBuilder b) => b
    ..operation = _i4.Operation(document: _i5.document, operationName: 'Logout')
    ..executeOnListen = true;
  _i3.GLogoutVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GLogoutData? Function(_i2.GLogoutData?, _i2.GLogoutData?)?
      get updateResult;
  _i2.GLogoutData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GLogoutData? parseData(Map<String, dynamic> json) =>
      _i2.GLogoutData.fromJson(json);
  static Serializer<GLogoutReq> get serializer => _$gLogoutReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GLogoutReq.serializer, this)
          as Map<String, dynamic>);
  static GLogoutReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GLogoutReq.serializer, json);
}
