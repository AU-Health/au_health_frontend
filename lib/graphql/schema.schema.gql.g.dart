// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GRole _$gRoleUSER = const GRole._('USER');
const GRole _$gRoleADMIN = const GRole._('ADMIN');

GRole _$gRoleValueOf(String name) {
  switch (name) {
    case 'USER':
      return _$gRoleUSER;
    case 'ADMIN':
      return _$gRoleADMIN;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GRole> _$gRoleValues = new BuiltSet<GRole>(const <GRole>[
  _$gRoleUSER,
  _$gRoleADMIN,
]);

Serializer<GLoginUser> _$gLoginUserSerializer = new _$GLoginUserSerializer();
Serializer<GNewAnswer> _$gNewAnswerSerializer = new _$GNewAnswerSerializer();
Serializer<GNewQuestion> _$gNewQuestionSerializer =
    new _$GNewQuestionSerializer();
Serializer<GNewSurveyResponse> _$gNewSurveyResponseSerializer =
    new _$GNewSurveyResponseSerializer();
Serializer<GNewUser> _$gNewUserSerializer = new _$GNewUserSerializer();
Serializer<GRole> _$gRoleSerializer = new _$GRoleSerializer();

class _$GLoginUserSerializer implements StructuredSerializer<GLoginUser> {
  @override
  final Iterable<Type> types = const [GLoginUser, _$GLoginUser];
  @override
  final String wireName = 'GLoginUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLoginUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLoginUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoginUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GNewAnswerSerializer implements StructuredSerializer<GNewAnswer> {
  @override
  final Iterable<Type> types = const [GNewAnswer, _$GNewAnswer];
  @override
  final String wireName = 'GNewAnswer';

  @override
  Iterable<Object?> serialize(Serializers serializers, GNewAnswer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'questionId',
      serializers.serialize(object.questionId,
          specifiedType: const FullType(GUUID)),
      'answer',
      serializers.serialize(object.answer,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GNewAnswer deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNewAnswerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'questionId':
          result.questionId.replace(serializers.deserialize(value,
              specifiedType: const FullType(GUUID))! as GUUID);
          break;
        case 'answer':
          result.answer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GNewQuestionSerializer implements StructuredSerializer<GNewQuestion> {
  @override
  final Iterable<Type> types = const [GNewQuestion, _$GNewQuestion];
  @override
  final String wireName = 'GNewQuestion';

  @override
  Iterable<Object?> serialize(Serializers serializers, GNewQuestion object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'question',
      serializers.serialize(object.question,
          specifiedType: const FullType(String)),
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(String)),
      'responseType',
      serializers.serialize(object.responseType,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.responses;
    if (value != null) {
      result
        ..add('responses')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  GNewQuestion deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNewQuestionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'question':
          result.question = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'responseType':
          result.responseType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'responses':
          result.responses.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GNewSurveyResponseSerializer
    implements StructuredSerializer<GNewSurveyResponse> {
  @override
  final Iterable<Type> types = const [GNewSurveyResponse, _$GNewSurveyResponse];
  @override
  final String wireName = 'GNewSurveyResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNewSurveyResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'answers',
      serializers.serialize(object.answers,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GNewAnswer)])),
    ];

    return result;
  }

  @override
  GNewSurveyResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNewSurveyResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'answers':
          result.answers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GNewAnswer)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GNewUserSerializer implements StructuredSerializer<GNewUser> {
  @override
  final Iterable<Type> types = const [GNewUser, _$GNewUser];
  @override
  final String wireName = 'GNewUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, GNewUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GNewUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNewUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GRoleSerializer implements PrimitiveSerializer<GRole> {
  @override
  final Iterable<Type> types = const <Type>[GRole];
  @override
  final String wireName = 'GRole';

  @override
  Object serialize(Serializers serializers, GRole object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GRole deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GRole.valueOf(serialized as String);
}

class _$GDateTime extends GDateTime {
  @override
  final String value;

  factory _$GDateTime([void Function(GDateTimeBuilder)? updates]) =>
      (new GDateTimeBuilder()..update(updates)).build();

  _$GDateTime._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, 'GDateTime', 'value');
  }

  @override
  GDateTime rebuild(void Function(GDateTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDateTimeBuilder toBuilder() => new GDateTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDateTime && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDateTime')..add('value', value))
        .toString();
  }
}

class GDateTimeBuilder implements Builder<GDateTime, GDateTimeBuilder> {
  _$GDateTime? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GDateTimeBuilder();

  GDateTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDateTime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDateTime;
  }

  @override
  void update(void Function(GDateTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDateTime build() {
    final _$result = _$v ??
        new _$GDateTime._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, 'GDateTime', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$GLoginUser extends GLoginUser {
  @override
  final String email;
  @override
  final String password;

  factory _$GLoginUser([void Function(GLoginUserBuilder)? updates]) =>
      (new GLoginUserBuilder()..update(updates)).build();

  _$GLoginUser._({required this.email, required this.password}) : super._() {
    BuiltValueNullFieldError.checkNotNull(email, 'GLoginUser', 'email');
    BuiltValueNullFieldError.checkNotNull(password, 'GLoginUser', 'password');
  }

  @override
  GLoginUser rebuild(void Function(GLoginUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginUserBuilder toBuilder() => new GLoginUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginUser &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLoginUser')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class GLoginUserBuilder implements Builder<GLoginUser, GLoginUserBuilder> {
  _$GLoginUser? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  GLoginUserBuilder();

  GLoginUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoginUser;
  }

  @override
  void update(void Function(GLoginUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLoginUser build() {
    final _$result = _$v ??
        new _$GLoginUser._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'GLoginUser', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, 'GLoginUser', 'password'));
    replace(_$result);
    return _$result;
  }
}

class _$GNewAnswer extends GNewAnswer {
  @override
  final GUUID questionId;
  @override
  final String answer;

  factory _$GNewAnswer([void Function(GNewAnswerBuilder)? updates]) =>
      (new GNewAnswerBuilder()..update(updates)).build();

  _$GNewAnswer._({required this.questionId, required this.answer}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        questionId, 'GNewAnswer', 'questionId');
    BuiltValueNullFieldError.checkNotNull(answer, 'GNewAnswer', 'answer');
  }

  @override
  GNewAnswer rebuild(void Function(GNewAnswerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNewAnswerBuilder toBuilder() => new GNewAnswerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNewAnswer &&
        questionId == other.questionId &&
        answer == other.answer;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, questionId.hashCode), answer.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GNewAnswer')
          ..add('questionId', questionId)
          ..add('answer', answer))
        .toString();
  }
}

class GNewAnswerBuilder implements Builder<GNewAnswer, GNewAnswerBuilder> {
  _$GNewAnswer? _$v;

  GUUIDBuilder? _questionId;
  GUUIDBuilder get questionId => _$this._questionId ??= new GUUIDBuilder();
  set questionId(GUUIDBuilder? questionId) => _$this._questionId = questionId;

  String? _answer;
  String? get answer => _$this._answer;
  set answer(String? answer) => _$this._answer = answer;

  GNewAnswerBuilder();

  GNewAnswerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questionId = $v.questionId.toBuilder();
      _answer = $v.answer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNewAnswer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNewAnswer;
  }

  @override
  void update(void Function(GNewAnswerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GNewAnswer build() {
    _$GNewAnswer _$result;
    try {
      _$result = _$v ??
          new _$GNewAnswer._(
              questionId: questionId.build(),
              answer: BuiltValueNullFieldError.checkNotNull(
                  answer, 'GNewAnswer', 'answer'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'questionId';
        questionId.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GNewAnswer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GNewQuestion extends GNewQuestion {
  @override
  final String question;
  @override
  final String category;
  @override
  final String responseType;
  @override
  final BuiltList<String>? responses;

  factory _$GNewQuestion([void Function(GNewQuestionBuilder)? updates]) =>
      (new GNewQuestionBuilder()..update(updates)).build();

  _$GNewQuestion._(
      {required this.question,
      required this.category,
      required this.responseType,
      this.responses})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(question, 'GNewQuestion', 'question');
    BuiltValueNullFieldError.checkNotNull(category, 'GNewQuestion', 'category');
    BuiltValueNullFieldError.checkNotNull(
        responseType, 'GNewQuestion', 'responseType');
  }

  @override
  GNewQuestion rebuild(void Function(GNewQuestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNewQuestionBuilder toBuilder() => new GNewQuestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNewQuestion &&
        question == other.question &&
        category == other.category &&
        responseType == other.responseType &&
        responses == other.responses;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, question.hashCode), category.hashCode),
            responseType.hashCode),
        responses.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GNewQuestion')
          ..add('question', question)
          ..add('category', category)
          ..add('responseType', responseType)
          ..add('responses', responses))
        .toString();
  }
}

class GNewQuestionBuilder
    implements Builder<GNewQuestion, GNewQuestionBuilder> {
  _$GNewQuestion? _$v;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _responseType;
  String? get responseType => _$this._responseType;
  set responseType(String? responseType) => _$this._responseType = responseType;

  ListBuilder<String>? _responses;
  ListBuilder<String> get responses =>
      _$this._responses ??= new ListBuilder<String>();
  set responses(ListBuilder<String>? responses) =>
      _$this._responses = responses;

  GNewQuestionBuilder();

  GNewQuestionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _question = $v.question;
      _category = $v.category;
      _responseType = $v.responseType;
      _responses = $v.responses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNewQuestion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNewQuestion;
  }

  @override
  void update(void Function(GNewQuestionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GNewQuestion build() {
    _$GNewQuestion _$result;
    try {
      _$result = _$v ??
          new _$GNewQuestion._(
              question: BuiltValueNullFieldError.checkNotNull(
                  question, 'GNewQuestion', 'question'),
              category: BuiltValueNullFieldError.checkNotNull(
                  category, 'GNewQuestion', 'category'),
              responseType: BuiltValueNullFieldError.checkNotNull(
                  responseType, 'GNewQuestion', 'responseType'),
              responses: _responses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'responses';
        _responses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GNewQuestion', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GNewSurveyResponse extends GNewSurveyResponse {
  @override
  final BuiltList<GNewAnswer> answers;

  factory _$GNewSurveyResponse(
          [void Function(GNewSurveyResponseBuilder)? updates]) =>
      (new GNewSurveyResponseBuilder()..update(updates)).build();

  _$GNewSurveyResponse._({required this.answers}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        answers, 'GNewSurveyResponse', 'answers');
  }

  @override
  GNewSurveyResponse rebuild(
          void Function(GNewSurveyResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNewSurveyResponseBuilder toBuilder() =>
      new GNewSurveyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNewSurveyResponse && answers == other.answers;
  }

  @override
  int get hashCode {
    return $jf($jc(0, answers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GNewSurveyResponse')
          ..add('answers', answers))
        .toString();
  }
}

class GNewSurveyResponseBuilder
    implements Builder<GNewSurveyResponse, GNewSurveyResponseBuilder> {
  _$GNewSurveyResponse? _$v;

  ListBuilder<GNewAnswer>? _answers;
  ListBuilder<GNewAnswer> get answers =>
      _$this._answers ??= new ListBuilder<GNewAnswer>();
  set answers(ListBuilder<GNewAnswer>? answers) => _$this._answers = answers;

  GNewSurveyResponseBuilder();

  GNewSurveyResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _answers = $v.answers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNewSurveyResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNewSurveyResponse;
  }

  @override
  void update(void Function(GNewSurveyResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GNewSurveyResponse build() {
    _$GNewSurveyResponse _$result;
    try {
      _$result = _$v ?? new _$GNewSurveyResponse._(answers: answers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'answers';
        answers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GNewSurveyResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GNewUser extends GNewUser {
  @override
  final String email;
  @override
  final String password;

  factory _$GNewUser([void Function(GNewUserBuilder)? updates]) =>
      (new GNewUserBuilder()..update(updates)).build();

  _$GNewUser._({required this.email, required this.password}) : super._() {
    BuiltValueNullFieldError.checkNotNull(email, 'GNewUser', 'email');
    BuiltValueNullFieldError.checkNotNull(password, 'GNewUser', 'password');
  }

  @override
  GNewUser rebuild(void Function(GNewUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNewUserBuilder toBuilder() => new GNewUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNewUser &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GNewUser')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class GNewUserBuilder implements Builder<GNewUser, GNewUserBuilder> {
  _$GNewUser? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  GNewUserBuilder();

  GNewUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNewUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNewUser;
  }

  @override
  void update(void Function(GNewUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GNewUser build() {
    final _$result = _$v ??
        new _$GNewUser._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'GNewUser', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, 'GNewUser', 'password'));
    replace(_$result);
    return _$result;
  }
}

class _$GUUID extends GUUID {
  @override
  final String value;

  factory _$GUUID([void Function(GUUIDBuilder)? updates]) =>
      (new GUUIDBuilder()..update(updates)).build();

  _$GUUID._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, 'GUUID', 'value');
  }

  @override
  GUUID rebuild(void Function(GUUIDBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUUIDBuilder toBuilder() => new GUUIDBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUUID && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUUID')..add('value', value))
        .toString();
  }
}

class GUUIDBuilder implements Builder<GUUID, GUUIDBuilder> {
  _$GUUID? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GUUIDBuilder();

  GUUIDBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUUID other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUUID;
  }

  @override
  void update(void Function(GUUIDBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUUID build() {
    final _$result = _$v ??
        new _$GUUID._(
            value:
                BuiltValueNullFieldError.checkNotNull(value, 'GUUID', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
