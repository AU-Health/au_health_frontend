// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Login$Mutation$User extends JsonSerializable with EquatableMixin {
  Login$Mutation$User();

  factory Login$Mutation$User.fromJson(Map<String, dynamic> json) =>
      _$Login$Mutation$UserFromJson(json);

  late String id;

  late String email;

  late DateTime createdAt;

  late DateTime updatedAt;

  @JsonKey(unknownEnumValue: Role.artemisUnknown)
  late Role role;

  @override
  List<Object?> get props => [id, email, createdAt, updatedAt, role];
  @override
  Map<String, dynamic> toJson() => _$Login$Mutation$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Login$Mutation extends JsonSerializable with EquatableMixin {
  Login$Mutation();

  factory Login$Mutation.fromJson(Map<String, dynamic> json) =>
      _$Login$MutationFromJson(json);

  late Login$Mutation$User login;

  @override
  List<Object?> get props => [login];
  @override
  Map<String, dynamic> toJson() => _$Login$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LoginUser extends JsonSerializable with EquatableMixin {
  LoginUser({required this.email, required this.password});

  factory LoginUser.fromJson(Map<String, dynamic> json) =>
      _$LoginUserFromJson(json);

  late String email;

  late String password;

  @override
  List<Object?> get props => [email, password];
  @override
  Map<String, dynamic> toJson() => _$LoginUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Register$Mutation$User extends JsonSerializable with EquatableMixin {
  Register$Mutation$User();

  factory Register$Mutation$User.fromJson(Map<String, dynamic> json) =>
      _$Register$Mutation$UserFromJson(json);

  late String id;

  late String email;

  late DateTime createdAt;

  late DateTime updatedAt;

  @JsonKey(unknownEnumValue: Role.artemisUnknown)
  late Role role;

  @override
  List<Object?> get props => [id, email, createdAt, updatedAt, role];
  @override
  Map<String, dynamic> toJson() => _$Register$Mutation$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Register$Mutation extends JsonSerializable with EquatableMixin {
  Register$Mutation();

  factory Register$Mutation.fromJson(Map<String, dynamic> json) =>
      _$Register$MutationFromJson(json);

  late Register$Mutation$User register;

  @override
  List<Object?> get props => [register];
  @override
  Map<String, dynamic> toJson() => _$Register$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NewUser extends JsonSerializable with EquatableMixin {
  NewUser({required this.email, required this.password});

  factory NewUser.fromJson(Map<String, dynamic> json) =>
      _$NewUserFromJson(json);

  late String email;

  late String password;

  @override
  List<Object?> get props => [email, password];
  @override
  Map<String, dynamic> toJson() => _$NewUserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Logout$Mutation extends JsonSerializable with EquatableMixin {
  Logout$Mutation();

  factory Logout$Mutation.fromJson(Map<String, dynamic> json) =>
      _$Logout$MutationFromJson(json);

  late bool logout;

  @override
  List<Object?> get props => [logout];
  @override
  Map<String, dynamic> toJson() => _$Logout$MutationToJson(this);
}

enum Role {
  @JsonValue('USER')
  user,
  @JsonValue('ADMIN')
  admin,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

@JsonSerializable(explicitToJson: true)
class LoginArguments extends JsonSerializable with EquatableMixin {
  LoginArguments({required this.input});

  @override
  factory LoginArguments.fromJson(Map<String, dynamic> json) =>
      _$LoginArgumentsFromJson(json);

  late LoginUser input;

  @override
  List<Object?> get props => [input];
  @override
  Map<String, dynamic> toJson() => _$LoginArgumentsToJson(this);
}

final LOGIN_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'Login'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'input')),
            type: NamedTypeNode(
                name: NameNode(value: 'LoginUser'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'login'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'loginUser'),
                  value: VariableNode(name: NameNode(value: 'input')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'email'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'createdAt'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'updatedAt'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'role'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class LoginMutation extends GraphQLQuery<Login$Mutation, LoginArguments> {
  LoginMutation({required this.variables});

  @override
  final DocumentNode document = LOGIN_MUTATION_DOCUMENT;

  @override
  final String operationName = 'Login';

  @override
  final LoginArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Login$Mutation parse(Map<String, dynamic> json) =>
      Login$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class RegisterArguments extends JsonSerializable with EquatableMixin {
  RegisterArguments({required this.input});

  @override
  factory RegisterArguments.fromJson(Map<String, dynamic> json) =>
      _$RegisterArgumentsFromJson(json);

  late NewUser input;

  @override
  List<Object?> get props => [input];
  @override
  Map<String, dynamic> toJson() => _$RegisterArgumentsToJson(this);
}

final REGISTER_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'Register'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'input')),
            type: NamedTypeNode(
                name: NameNode(value: 'NewUser'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'register'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'newUser'),
                  value: VariableNode(name: NameNode(value: 'input')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'email'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'createdAt'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'updatedAt'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'role'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class RegisterMutation
    extends GraphQLQuery<Register$Mutation, RegisterArguments> {
  RegisterMutation({required this.variables});

  @override
  final DocumentNode document = REGISTER_MUTATION_DOCUMENT;

  @override
  final String operationName = 'Register';

  @override
  final RegisterArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Register$Mutation parse(Map<String, dynamic> json) =>
      Register$Mutation.fromJson(json);
}

final LOGOUT_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'Logout'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'logout'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class LogoutMutation extends GraphQLQuery<Logout$Mutation, JsonSerializable> {
  LogoutMutation();

  @override
  final DocumentNode document = LOGOUT_MUTATION_DOCUMENT;

  @override
  final String operationName = 'Logout';

  @override
  List<Object?> get props => [document, operationName];
  @override
  Logout$Mutation parse(Map<String, dynamic> json) =>
      Logout$Mutation.fromJson(json);
}
