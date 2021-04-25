// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Core.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Core _$CoreFromJson(Map<String, dynamic> json) {
  return $checkedNew('Core', json, () {
    final val = Core(
      $checkedConvert(json, 'core', (v) => v as String?),
      $checkedConvert(json, 'flight', (v) => v as int?),
      $checkedConvert(json, 'gridfins', (v) => v as bool?),
      $checkedConvert(json, 'legs', (v) => v as bool?),
      $checkedConvert(json, 'reused', (v) => v as bool?),
      $checkedConvert(json, 'landing_attempt', (v) => v as bool?),
      $checkedConvert(json, 'landing_success', (v) => v as bool?),
      $checkedConvert(json, 'landing_type', (v) => v as String?),
      $checkedConvert(json, 'landpad', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {
    'landingAttempt': 'landing_attempt',
    'landingSuccess': 'landing_success',
    'landingType': 'landing_type'
  });
}

Map<String, dynamic> _$CoreToJson(Core instance) => <String, dynamic>{
      'core': instance.core,
      'flight': instance.flight,
      'gridfins': instance.gridfins,
      'legs': instance.legs,
      'reused': instance.reused,
      'landing_attempt': instance.landingAttempt,
      'landing_success': instance.landingSuccess,
      'landing_type': instance.landingType,
      'landpad': instance.landpad,
    };
