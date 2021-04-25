// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Mass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mass _$MassFromJson(Map<String, dynamic> json) {
  return $checkedNew('Mass', json, () {
    final val = Mass(
      $checkedConvert(json, 'kg', (v) => v as int?),
      $checkedConvert(json, 'lb', (v) => v as int?),
    );
    return val;
  });
}

Map<String, dynamic> _$MassToJson(Mass instance) => <String, dynamic>{
      'kg': instance.kg,
      'lb': instance.lb,
    };
