// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drug_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DrugModel _$$_DrugModelFromJson(Map<String, dynamic> json) => _$_DrugModel(
      imageUrl: json['imageUrl'] as String,
      drugName: json['drugName'] as String,
      dosage: json['dosage'] as String,
      price: (json['price'] as num).toDouble(),
      requiresPrescription: json['requiresPrescription'] as bool,
    );

Map<String, dynamic> _$$_DrugModelToJson(_$_DrugModel instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'drugName': instance.drugName,
      'dosage': instance.dosage,
      'price': instance.price,
      'requiresPrescription': instance.requiresPrescription,
    };
