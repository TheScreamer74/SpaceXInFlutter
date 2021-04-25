// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Landpad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Landpad _$LandpadFromJson(Map<String, dynamic> json) {
  return $checkedNew('Landpad', json, () {
    final val = Landpad(
      $checkedConvert(json, 'name', (v) => v as String?),
      $checkedConvert(json, 'full_name', (v) => v as String?),
      $checkedConvert(json, 'type', (v) => v as String?),
      $checkedConvert(json, 'locality', (v) => v as String?),
      $checkedConvert(json, 'region', (v) => v as String?),
      $checkedConvert(json, 'latitude', (v) => (v as num?)?.toDouble()),
      $checkedConvert(json, 'longitude', (v) => (v as num?)?.toDouble()),
      $checkedConvert(json, 'landing_attempts', (v) => v as int?),
      $checkedConvert(json, 'landing_successes', (v) => v as int?),
      $checkedConvert(json, 'wikipedia', (v) => v as String?),
      $checkedConvert(json, 'details', (v) => v as String?),
      $checkedConvert(json, 'launches',
          (v) => (v as List<dynamic>?)?.map((e) => e as String?).toList()),
      $checkedConvert(json, 'status', (v) => v as String?),
      $checkedConvert(json, 'id', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {
    'fullName': 'full_name',
    'landingAttempts': 'landing_attempts',
    'landingSuccesses': 'landing_successes'
  });
}

Map<String, dynamic> _$LandpadToJson(Landpad instance) => <String, dynamic>{
      'name': instance.name,
      'full_name': instance.fullName,
      'type': instance.type,
      'locality': instance.locality,
      'region': instance.region,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'landing_attempts': instance.landingAttempts,
      'landing_successes': instance.landingSuccesses,
      'wikipedia': instance.wikipedia,
      'details': instance.details,
      'launches': instance.launches,
      'status': instance.status,
      'id': instance.id,
    };
