// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Login$Mutation$User _$Login$Mutation$UserFromJson(Map<String, dynamic> json) =>
    Login$Mutation$User()
      ..id = json['id'] as String
      ..email = json['email'] as String
      ..createdAt = DateTime.parse(json['createdAt'] as String)
      ..updatedAt = DateTime.parse(json['updatedAt'] as String)
      ..role = $enumDecode(_$RoleEnumMap, json['role'],
          unknownValue: Role.artemisUnknown);

Map<String, dynamic> _$Login$Mutation$UserToJson(
        Login$Mutation$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'role': _$RoleEnumMap[instance.role],
    };

const _$RoleEnumMap = {
  Role.user: 'USER',
  Role.admin: 'ADMIN',
  Role.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

Login$Mutation _$Login$MutationFromJson(Map<String, dynamic> json) =>
    Login$Mutation()
      ..login =
          Login$Mutation$User.fromJson(json['login'] as Map<String, dynamic>);

Map<String, dynamic> _$Login$MutationToJson(Login$Mutation instance) =>
    <String, dynamic>{
      'login': instance.login.toJson(),
    };

LoginUser _$LoginUserFromJson(Map<String, dynamic> json) => LoginUser(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginUserToJson(LoginUser instance) => <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

Register$Mutation$User _$Register$Mutation$UserFromJson(
        Map<String, dynamic> json) =>
    Register$Mutation$User()
      ..id = json['id'] as String
      ..email = json['email'] as String
      ..createdAt = DateTime.parse(json['createdAt'] as String)
      ..updatedAt = DateTime.parse(json['updatedAt'] as String)
      ..role = $enumDecode(_$RoleEnumMap, json['role'],
          unknownValue: Role.artemisUnknown);

Map<String, dynamic> _$Register$Mutation$UserToJson(
        Register$Mutation$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'role': _$RoleEnumMap[instance.role],
    };

Register$Mutation _$Register$MutationFromJson(Map<String, dynamic> json) =>
    Register$Mutation()
      ..register = Register$Mutation$User.fromJson(
          json['register'] as Map<String, dynamic>);

Map<String, dynamic> _$Register$MutationToJson(Register$Mutation instance) =>
    <String, dynamic>{
      'register': instance.register.toJson(),
    };

NewUser _$NewUserFromJson(Map<String, dynamic> json) => NewUser(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$NewUserToJson(NewUser instance) => <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

Logout$Mutation _$Logout$MutationFromJson(Map<String, dynamic> json) =>
    Logout$Mutation()..logout = json['logout'] as bool;

Map<String, dynamic> _$Logout$MutationToJson(Logout$Mutation instance) =>
    <String, dynamic>{
      'logout': instance.logout,
    };

LoginArguments _$LoginArgumentsFromJson(Map<String, dynamic> json) =>
    LoginArguments(
      input: LoginUser.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginArgumentsToJson(LoginArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

RegisterArguments _$RegisterArgumentsFromJson(Map<String, dynamic> json) =>
    RegisterArguments(
      input: NewUser.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterArgumentsToJson(RegisterArguments instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };
