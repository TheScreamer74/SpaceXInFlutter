// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LandingLegs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LandingLegs _$LandingLegsFromJson(Map<String, dynamic> json) {
  return $checkedNew('LandingLegs', json, () {
    final val = LandingLegs(
      $checkedConvert(json, 'number', (v) => v as int?),
      $checkedConvert(json, 'material', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$LandingLegsToJson(LandingLegs instance) =>
    <String, dynamic>{
      'number': instance.number,
      'material': instance.material,
    };
