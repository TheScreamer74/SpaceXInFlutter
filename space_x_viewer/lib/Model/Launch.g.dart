// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Launch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Launch _$LaunchFromJson(Map<String, dynamic> json) {
  return $checkedNew('Launch', json, () {
    final val = Launch(
      $checkedConvert(
          json,
          'fairings',
          (v) =>
              v == null ? null : Fairings.fromJson(v as Map<String, dynamic>)),
      $checkedConvert(json, 'links',
          (v) => v == null ? null : Links.fromJson(v as Map<String, dynamic>)),
      $checkedConvert(json, 'static_fire_date_utc', (v) => v as String?),
      $checkedConvert(
          json, 'static_fire_date_unix', (v) => (v as num?)?.toDouble()),
      $checkedConvert(json, 'tbd', (v) => v as bool?),
      $checkedConvert(json, 'net', (v) => v as bool?),
      $checkedConvert(json, 'window', (v) => v as int?),
      $checkedConvert(json, 'rocket', (v) => v as String?),
      $checkedConvert(json, 'success', (v) => v as bool?),
      $checkedConvert(json, 'details', (v) => v as String?),
      $checkedConvert(json, 'crew',
          (v) => (v as List<dynamic>?)?.map((e) => e as String?).toList()),
      $checkedConvert(json, 'ships',
          (v) => (v as List<dynamic>?)?.map((e) => e as String?).toList()),
      $checkedConvert(json, 'capsules',
          (v) => (v as List<dynamic>?)?.map((e) => e as String?).toList()),
      $checkedConvert(json, 'payloads',
          (v) => (v as List<dynamic>?)?.map((e) => e as String?).toList()),
      $checkedConvert(json, 'launchpad', (v) => v as String?),
      $checkedConvert(json, 'auto_update', (v) => v as bool?),
      $checkedConvert(json, 'launch_library_id', (v) => v as String?),
      $checkedConvert(
          json,
          'failure',
          (v) => (v as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : Failure.fromJson(e as Map<String, dynamic>))
              .toList()),
      $checkedConvert(json, 'flight_number', (v) => v as int),
      $checkedConvert(json, 'name', (v) => v as String?),
      $checkedConvert(json, 'date_utc', (v) => v as String?),
      $checkedConvert(json, 'date_unix', (v) => (v as num?)?.toDouble()),
      $checkedConvert(json, 'date_local', (v) => v as String?),
      $checkedConvert(json, 'date_precision', (v) => v as String?),
      $checkedConvert(json, 'upcoming', (v) => v as bool?),
      $checkedConvert(
          json,
          'cores',
          (v) => (v as List<dynamic>?)
              ?.map((e) =>
                  e == null ? null : Core.fromJson(e as Map<String, dynamic>))
              .toList()),
      $checkedConvert(json, 'id', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {
    'staticFireDateUtc': 'static_fire_date_utc',
    'staticFireDateUnix': 'static_fire_date_unix',
    'autoUpdate': 'auto_update',
    'launchLibraryId': 'launch_library_id',
    'flightNumber': 'flight_number',
    'dateUtc': 'date_utc',
    'dateUnix': 'date_unix',
    'dateLocal': 'date_local',
    'datePrecision': 'date_precision'
  });
}

Map<String, dynamic> _$LaunchToJson(Launch instance) => <String, dynamic>{
      'fairings': instance.fairings?.toJson(),
      'links': instance.links?.toJson(),
      'static_fire_date_utc': instance.staticFireDateUtc,
      'static_fire_date_unix': instance.staticFireDateUnix,
      'tbd': instance.tbd,
      'net': instance.net,
      'window': instance.window,
      'rocket': instance.rocket,
      'success': instance.success,
      'details': instance.details,
      'crew': instance.crew,
      'ships': instance.ships,
      'capsules': instance.capsules,
      'payloads': instance.payloads,
      'launchpad': instance.launchpad,
      'auto_update': instance.autoUpdate,
      'launch_library_id': instance.launchLibraryId,
      'failure': instance.failure?.map((e) => e?.toJson()).toList(),
      'flight_number': instance.flightNumber,
      'name': instance.name,
      'date_utc': instance.dateUtc,
      'date_unix': instance.dateUnix,
      'date_local': instance.dateLocal,
      'date_precision': instance.datePrecision,
      'upcoming': instance.upcoming,
      'cores': instance.cores?.map((e) => e?.toJson()).toList(),
      'id': instance.id,
    };
