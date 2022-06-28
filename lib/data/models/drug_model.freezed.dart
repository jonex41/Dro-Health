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
  String get imageUrl => throw _privateConstructorUsedError;
  String get drugName => throw _privateConstructorUsedError;
  String get dosage => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  bool get requiresPrescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DrugModelCopyWith<DrugModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrugModelCopyWith<$Res> {
  factory $DrugModelCopyWith(DrugModel value, $Res Function(DrugModel) then) =
      _$DrugModelCopyWithImpl<$Res>;
  $Res call(
      {String imageUrl,
      String drugName,
      String dosage,
      double price,
      bool requiresPrescription});
}

/// @nodoc
class _$DrugModelCopyWithImpl<$Res> implements $DrugModelCopyWith<$Res> {
  _$DrugModelCopyWithImpl(this._value, this._then);

  final DrugModel _value;
  // ignore: unused_field
  final $Res Function(DrugModel) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? drugName = freezed,
    Object? dosage = freezed,
    Object? price = freezed,
    Object? requiresPrescription = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      drugName: drugName == freezed
          ? _value.drugName
          : drugName // ignore: cast_nullable_to_non_nullable
              as String,
      dosage: dosage == freezed
          ? _value.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      requiresPrescription: requiresPrescription == freezed
          ? _value.requiresPrescription
          : requiresPrescription // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_DrugModelCopyWith<$Res> implements $DrugModelCopyWith<$Res> {
  factory _$$_DrugModelCopyWith(
          _$_DrugModel value, $Res Function(_$_DrugModel) then) =
      __$$_DrugModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String imageUrl,
      String drugName,
      String dosage,
      double price,
      bool requiresPrescription});
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
    Object? imageUrl = freezed,
    Object? drugName = freezed,
    Object? dosage = freezed,
    Object? price = freezed,
    Object? requiresPrescription = freezed,
  }) {
    return _then(_$_DrugModel(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      drugName: drugName == freezed
          ? _value.drugName
          : drugName // ignore: cast_nullable_to_non_nullable
              as String,
      dosage: dosage == freezed
          ? _value.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      requiresPrescription: requiresPrescription == freezed
          ? _value.requiresPrescription
          : requiresPrescription // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DrugModel with DiagnosticableTreeMixin implements _DrugModel {
  const _$_DrugModel(
      {required this.imageUrl,
      required this.drugName,
      required this.dosage,
      required this.price,
      required this.requiresPrescription});

  factory _$_DrugModel.fromJson(Map<String, dynamic> json) =>
      _$$_DrugModelFromJson(json);

  @override
  final String imageUrl;
  @override
  final String drugName;
  @override
  final String dosage;
  @override
  final double price;
  @override
  final bool requiresPrescription;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DrugModel(imageUrl: $imageUrl, drugName: $drugName, dosage: $dosage, price: $price, requiresPrescription: $requiresPrescription)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DrugModel'))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('drugName', drugName))
      ..add(DiagnosticsProperty('dosage', dosage))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('requiresPrescription', requiresPrescription));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrugModel &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.drugName, drugName) &&
            const DeepCollectionEquality().equals(other.dosage, dosage) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.requiresPrescription, requiresPrescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(drugName),
      const DeepCollectionEquality().hash(dosage),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(requiresPrescription));

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
      {required final String imageUrl,
      required final String drugName,
      required final String dosage,
      required final double price,
      required final bool requiresPrescription}) = _$_DrugModel;

  factory _DrugModel.fromJson(Map<String, dynamic> json) =
      _$_DrugModel.fromJson;

  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  String get drugName => throw _privateConstructorUsedError;
  @override
  String get dosage => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  bool get requiresPrescription => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DrugModelCopyWith<_$_DrugModel> get copyWith =>
      throw _privateConstructorUsedError;
}
