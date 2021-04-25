// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Diameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Diameter _$DiameterFromJson(Map<String, dynamic> json) {
  return $checkedNew('Diameter', json, () {
    final val = Diameter(
      $checkedConvert(json, 'meters', (v) => (v as num?)?.toDouble()),
      $checkedConvert(json, 'feet', (v) => (v as num?)?.toDouble()),
    );
    return val;
  });
}

Map<String, dynamic> _$DiameterToJson(Diameter instance) => <String, dynamic>{
      'meters': instance.meters,
      'feet': instance.feet,
    };
