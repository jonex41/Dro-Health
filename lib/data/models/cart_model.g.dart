// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartModel _$$_CartModelFromJson(Map<String, dynamic> json) => _$_CartModel(
      drugModel: DrugModel.fromJson(json['drugModel'] as Map<String, dynamic>),
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$_CartModelToJson(_$_CartModel instance) =>
    <String, dynamic>{
      'drugModel': instance.drugModel,
      'quantity': instance.quantity,
    };
