// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartModel _$CartModelFromJson(Map<String, dynamic> json) {
  return _CartModel.fromJson(json);
}

/// @nodoc
mixin _$CartModel {
  DrugModel get drugModel => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res>;
  $Res call({DrugModel drugModel, int quantity});

  $DrugModelCopyWith<$Res> get drugModel;
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res> implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

  final CartModel _value;
  // ignore: unused_field
  final $Res Function(CartModel) _then;

  @override
  $Res call({
    Object? drugModel = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      drugModel: drugModel == freezed
          ? _value.drugModel
          : drugModel // ignore: cast_nullable_to_non_nullable
              as DrugModel,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $DrugModelCopyWith<$Res> get drugModel {
    return $DrugModelCopyWith<$Res>(_value.drugModel, (value) {
      return _then(_value.copyWith(drugModel: value));
    });
  }
}

/// @nodoc
abstract class _$$_CartModelCopyWith<$Res> implements $CartModelCopyWith<$Res> {
  factory _$$_CartModelCopyWith(
          _$_CartModel value, $Res Function(_$_CartModel) then) =
      __$$_CartModelCopyWithImpl<$Res>;
  @override
  $Res call({DrugModel drugModel, int quantity});

  @override
  $DrugModelCopyWith<$Res> get drugModel;
}

/// @nodoc
class __$$_CartModelCopyWithImpl<$Res> extends _$CartModelCopyWithImpl<$Res>
    implements _$$_CartModelCopyWith<$Res> {
  __$$_CartModelCopyWithImpl(
      _$_CartModel _value, $Res Function(_$_CartModel) _then)
      : super(_value, (v) => _then(v as _$_CartModel));

  @override
  _$_CartModel get _value => super._value as _$_CartModel;

  @override
  $Res call({
    Object? drugModel = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$_CartModel(
      drugModel: drugModel == freezed
          ? _value.drugModel
          : drugModel // ignore: cast_nullable_to_non_nullable
              as DrugModel,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartModel with DiagnosticableTreeMixin implements _CartModel {
  const _$_CartModel({required this.drugModel, required this.quantity});

  factory _$_CartModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartModelFromJson(json);

  @override
  final DrugModel drugModel;
  @override
  final int quantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartModel(drugModel: $drugModel, quantity: $quantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartModel'))
      ..add(DiagnosticsProperty('drugModel', drugModel))
      ..add(DiagnosticsProperty('quantity', quantity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartModel &&
            const DeepCollectionEquality().equals(other.drugModel, drugModel) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(drugModel),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      __$$_CartModelCopyWithImpl<_$_CartModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartModelToJson(this);
  }
}

abstract class _CartModel implements CartModel {
  const factory _CartModel(
      {required final DrugModel drugModel,
      required final int quantity}) = _$_CartModel;

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$_CartModel.fromJson;

  @override
  DrugModel get drugModel => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}
