// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drug_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DrugModel _$DrugModelFromJson(Map<String, dynamic> json) {
  return _DrugModel.fromJson(json);
}

/// @nodoc
mixin _$DrugModel {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DrugModelCopyWith<DrugModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrugModelCopyWith<$Res> {
  factory $DrugModelCopyWith(DrugModel value, $Res Function(DrugModel) then) =
      _$DrugModelCopyWithImpl<$Res>;
  $Res call({String firstName, String lastName, int age});
}

/// @nodoc
class _$DrugModelCopyWithImpl<$Res> implements $DrugModelCopyWith<$Res> {
  _$DrugModelCopyWithImpl(this._value, this._then);

  final DrugModel _value;
  // ignore: unused_field
  final $Res Function(DrugModel) _then;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_DrugModelCopyWith<$Res> implements $DrugModelCopyWith<$Res> {
  factory _$$_DrugModelCopyWith(
          _$_DrugModel value, $Res Function(_$_DrugModel) then) =
      __$$_DrugModelCopyWithImpl<$Res>;
  @override
  $Res call({String firstName, String lastName, int age});
}

/// @nodoc
class __$$_DrugModelCopyWithImpl<$Res> extends _$DrugModelCopyWithImpl<$Res>
    implements _$$_DrugModelCopyWith<$Res> {
  __$$_DrugModelCopyWithImpl(
      _$_DrugModel _value, $Res Function(_$_DrugModel) _then)
      : super(_value, (v) => _then(v as _$_DrugModel));

  @override
  _$_DrugModel get _value => super._value as _$_DrugModel;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? age = freezed,
  }) {
    return _then(_$_DrugModel(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DrugModel with DiagnosticableTreeMixin implements _DrugModel {
  const _$_DrugModel(
      {required this.firstName, required this.lastName, required this.age});

  factory _$_DrugModel.fromJson(Map<String, dynamic> json) =>
      _$$_DrugModelFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final int age;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DrugModel(firstName: $firstName, lastName: $lastName, age: $age)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DrugModel'))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('age', age));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrugModel &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.age, age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(age));

  @JsonKey(ignore: true)
  @override
  _$$_DrugModelCopyWith<_$_DrugModel> get copyWith =>
      __$$_DrugModelCopyWithImpl<_$_DrugModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DrugModelToJson(this);
  }
}

abstract class _DrugModel implements DrugModel {
  const factory _DrugModel(
      {required final String firstName,
      required final String lastName,
      required final int age}) = _$_DrugModel;

  factory _DrugModel.fromJson(Map<String, dynamic> json) =
      _$_DrugModel.fromJson;

  @override
  String get firstName => throw _privateConstructorUsedError;
  @override
  String get lastName => throw _privateConstructorUsedError;
  @override
  int get age => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DrugModelCopyWith<_$_DrugModel> get copyWith =>
      throw _privateConstructorUsedError;
}
