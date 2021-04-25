// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Launchpad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Launchpad _$LaunchpadFromJson(Map<String, dynamic> json) {
  return $checkedNew('Launchpad', json, () {
    final val = Launchpad(
      $checkedConvert(json, 'name', (v) => v as String?),
      $checkedConvert(json, 'full_name', (v) => v as String?),
      $checkedConvert(json, 'locality', (v) => v as String?),
      $checkedConvert(json, 'region', (v) => v as String?),
      $checkedConvert(json, 'timezone', (v) => v as String?),
      $checkedConvert(json, 'latitude', (v) => (v as num?)?.toDouble()),
      $checkedConvert(json, 'longitude', (v) => (v as num?)?.toDouble()),
      $checkedConvert(json, 'launching_attempts', (v) => v as int?),
      $checkedConvert(json, 'launching_successes', (v) => v as int?),
      $checkedConvert(json, 'rockets',
          (v) => (v as List<dynamic>?)?.map((e) => e as String?).toList()),
      $checkedConvert(json, 'launches',
          (v) => (v as List<dynamic>?)?.map((e) => e as String?).toList()),
      $checkedConvert(json, 'details', (v) => v as String?),
      $checkedConvert(json, 'status', (v) => v as String?),
      $checkedConvert(json, 'id', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {
    'fullName': 'full_name',
    'launchingAttempts': 'launching_attempts',
    'launchingSuccesses': 'launching_successes'
  });
}

Map<String, dynamic> _$LaunchpadToJson(Launchpad instance) => <String, dynamic>{
      'name': instance.name,
      'full_name': instance.fullName,
      'locality': instance.locality,
      'region': instance.region,
      'timezone': instance.timezone,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'launching_attempts': instance.launchingAttempts,
      'launching_successes': instance.launchingSuccesses,
      'rockets': instance.rockets,
      'launches': instance.launches,
      'details': instance.details,
      'status': instance.status,
      'id': instance.id,
    };
