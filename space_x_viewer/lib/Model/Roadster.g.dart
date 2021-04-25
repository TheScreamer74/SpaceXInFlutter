// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Roadster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Roadster _$RoadsterFromJson(Map<String, dynamic> json) {
  return $checkedNew('Roadster', json, () {
    final val = Roadster(
      $checkedConvert(json, 'flickr_images',
          (v) => (v as List<dynamic>?)?.map((e) => e as String?).toList()),
      $checkedConvert(json, 'name', (v) => v as String?),
      $checkedConvert(json, 'launch_date_utc', (v) => v as String?),
      $checkedConvert(json, 'launch_date_unix', (v) => (v as num).toDouble()),
      $checkedConvert(json, 'launch_mass_kg', (v) => v as int),
      $checkedConvert(json, 'launch_mass_lbs', (v) => v as int),
      $checkedConvert(json, 'norad_id', (v) => v as int),
      $checkedConvert(json, 'epoch_jd', (v) => (v as num).toDouble()),
      $checkedConvert(json, 'orbit_type', (v) => v as String?),
      $checkedConvert(json, 'apoapsis_au', (v) => (v as num).toDouble()),
      $checkedConvert(json, 'periapsis_au', (v) => (v as num).toDouble()),
      $checkedConvert(json, 'semi_major_axis_au', (v) => (v as num).toDouble()),
      $checkedConvert(json, 'eccentricity', (v) => (v as num).toDouble()),
      $checkedConvert(json, 'inclination', (v) => (v as num).toDouble()),
      $checkedConvert(json, 'longitude', (v) => (v as num).toDouble()),
      $checkedConvert(json, 'periapsis_arg', (v) => (v as num).toDouble()),
      $checkedConvert(json, 'period_days', (v) => (v as num).toDouble()),
      $checkedConvert(json, 'speed_kph', (v) => (v as num).toDouble()),
      $checkedConvert(json, 'speed_mph', (v) => (v as num).toDouble()),
      $checkedConvert(json, 'earth_distance_km', (v) => (v as num).toDouble()),
      $checkedConvert(json, 'earth_distance_mi', (v) => (v as num).toDouble()),
      $checkedConvert(json, 'mars_distance_km', (v) => (v as num).toDouble()),
      $checkedConvert(json, 'mars_distance_mi', (v) => (v as num).toDouble()),
      $checkedConvert(json, 'wikipedia', (v) => v as String?),
      $checkedConvert(json, 'video', (v) => v as String?),
      $checkedConvert(json, 'details', (v) => v as String?),
      $checkedConvert(json, 'id', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {
    'flickrImages': 'flickr_images',
    'launchDateUtc': 'launch_date_utc',
    'launchDateUnix': 'launch_date_unix',
    'launchMassKg': 'launch_mass_kg',
    'launchMassLbs': 'launch_mass_lbs',
    'noradId': 'norad_id',
    'epochJd': 'epoch_jd',
    'orbitType': 'orbit_type',
    'apoapsisAu': 'apoapsis_au',
    'periapsisAu': 'periapsis_au',
    'semiMajorAxisAu': 'semi_major_axis_au',
    'periapsisArg': 'periapsis_arg',
    'periodDays': 'period_days',
    'speedKph': 'speed_kph',
    'speedMph': 'speed_mph',
    'earthDistanceKm': 'earth_distance_km',
    'earthDistanceMi': 'earth_distance_mi',
    'marsDistanceKm': 'mars_distance_km',
    'marsDistanceMi': 'mars_distance_mi'
  });
}

Map<String, dynamic> _$RoadsterToJson(Roadster instance) => <String, dynamic>{
      'flickr_images': instance.flickrImages,
      'name': instance.name,
      'launch_date_utc': instance.launchDateUtc,
      'launch_date_unix': instance.launchDateUnix,
      'launch_mass_kg': instance.launchMassKg,
      'launch_mass_lbs': instance.launchMassLbs,
      'norad_id': instance.noradId,
      'epoch_jd': instance.epochJd,
      'orbit_type': instance.orbitType,
      'apoapsis_au': instance.apoapsisAu,
      'periapsis_au': instance.periapsisAu,
      'semi_major_axis_au': instance.semiMajorAxisAu,
      'eccentricity': instance.eccentricity,
      'inclination': instance.inclination,
      'longitude': instance.longitude,
      'periapsis_arg': instance.periapsisArg,
      'period_days': instance.periodDays,
      'speed_kph': instance.speedKph,
      'speed_mph': instance.speedMph,
      'earth_distance_km': instance.earthDistanceKm,
      'earth_distance_mi': instance.earthDistanceMi,
      'mars_distance_km': instance.marsDistanceKm,
      'mars_distance_mi': instance.marsDistanceMi,
      'wikipedia': instance.wikipedia,
      'video': instance.video,
      'details': instance.details,
      'id': instance.id,
    };
