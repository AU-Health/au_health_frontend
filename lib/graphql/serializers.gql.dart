import 'package:aucares/graphql/queries/login.data.gql.dart'
    show GLoginData, GLoginData_login;
import 'package:aucares/graphql/queries/login.req.gql.dart' show GLoginReq;
import 'package:aucares/graphql/queries/login.var.gql.dart' show GLoginVars;
import 'package:aucares/graphql/queries/logout.data.gql.dart' show GLogoutData;
import 'package:aucares/graphql/queries/logout.req.gql.dart' show GLogoutReq;
import 'package:aucares/graphql/queries/logout.var.gql.dart' show GLogoutVars;
import 'package:aucares/graphql/queries/register.data.gql.dart'
    show GRegisterData, GRegisterData_register;
import 'package:aucares/graphql/queries/register.req.gql.dart'
    show GRegisterReq;
import 'package:aucares/graphql/queries/register.var.gql.dart'
    show GRegisterVars;
import 'package:aucares/graphql/schema.schema.gql.dart'
    show
        GDateTime,
        GLoginUser,
        GNewAnswer,
        GNewQuestion,
        GNewSurveyResponse,
        GNewUser,
        GRole,
        GUUID;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GDateTime,
  GLoginData,
  GLoginData_login,
  GLoginReq,
  GLoginUser,
  GLoginVars,
  GLogoutData,
  GLogoutReq,
  GLogoutVars,
  GNewAnswer,
  GNewQuestion,
  GNewSurveyResponse,
  GNewUser,
  GRegisterData,
  GRegisterData_register,
  GRegisterReq,
  GRegisterVars,
  GRole,
  GUUID
])
final Serializers serializers = _serializersBuilder.build();
