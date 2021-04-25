// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PayloadWeights.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayloadWeights _$PayloadWeightsFromJson(Map<String, dynamic> json) {
  return $checkedNew('PayloadWeights', json, () {
    final val = PayloadWeights(
      $checkedConvert(json, 'id', (v) => v as String?),
      $checkedConvert(json, 'name', (v) => v as String?),
      $checkedConvert(json, 'kg', (v) => v as int?),
      $checkedConvert(json, 'lb', (v) => v as int?),
    );
    return val;
  });
}

Map<String, dynamic> _$PayloadWeightsToJson(PayloadWeights instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'kg': instance.kg,
      'lb': instance.lb,
    };
