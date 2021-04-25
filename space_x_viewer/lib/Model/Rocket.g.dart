// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Rocket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rocket _$RocketFromJson(Map<String, dynamic> json) {
  return $checkedNew('Rocket', json, () {
    final val = Rocket(
      $checkedConvert(json, 'height',
          (v) => v == null ? null : Height.fromJson(v as Map<String, dynamic>)),
      $checkedConvert(
          json,
          'diameter',
          (v) =>
              v == null ? null : Diameter.fromJson(v as Map<String, dynamic>)),
      $checkedConvert(json, 'mass',
          (v) => v == null ? null : Mass.fromJson(v as Map<String, dynamic>)),
      $checkedConvert(
          json,
          'first_stage',
          (v) => v == null
              ? null
              : FirstStage.fromJson(v as Map<String, dynamic>)),
      $checkedConvert(
          json,
          'second_stage',
          (v) => v == null
              ? null
              : SecondStage.fromJson(v as Map<String, dynamic>)),
      $checkedConvert(json, 'engine',
          (v) => v == null ? null : Engine.fromJson(v as Map<String, dynamic>)),
      $checkedConvert(
          json,
          'landing_legs',
          (v) => v == null
              ? null
              : LandingLegs.fromJson(v as Map<String, dynamic>)),
      $checkedConvert(
          json,
          'payload_weights',
          (v) => (v as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : PayloadWeights.fromJson(e as Map<String, dynamic>))
              .toList()),
      $checkedConvert(json, 'flickr_images',
          (v) => (v as List<dynamic>?)?.map((e) => e as String?).toList()),
      $checkedConvert(json, 'name', (v) => v as String?),
      $checkedConvert(json, 'type', (v) => v as String?),
      $checkedConvert(json, 'active', (v) => v as bool?),
      $checkedConvert(json, 'stages', (v) => v as int?),
      $checkedConvert(json, 'boosters', (v) => v as int?),
      $checkedConvert(json, 'cost_per_launch', (v) => (v as num?)?.toDouble()),
      $checkedConvert(json, 'success_rate_pct', (v) => (v as num?)?.toDouble()),
      $checkedConvert(json, 'first_flight', (v) => v as String?),
      $checkedConvert(json, 'country', (v) => v as String?),
      $checkedConvert(json, 'company', (v) => v as String?),
      $checkedConvert(json, 'wikipedia', (v) => v as String?),
      $checkedConvert(json, 'description', (v) => v as String?),
      $checkedConvert(json, 'id', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {
    'firstStage': 'first_stage',
    'secondStage': 'second_stage',
    'landingLegs': 'landing_legs',
    'payloadWeights': 'payload_weights',
    'flickrImages': 'flickr_images',
    'costPerLaunch': 'cost_per_launch',
    'successRatePct': 'success_rate_pct',
    'firstFlight': 'first_flight'
  });
}

Map<String, dynamic> _$RocketToJson(Rocket instance) => <String, dynamic>{
      'height': instance.height?.toJson(),
      'diameter': instance.diameter?.toJson(),
      'mass': instance.mass?.toJson(),
      'first_stage': instance.firstStage?.toJson(),
      'second_stage': instance.secondStage?.toJson(),
      'engine': instance.engine?.toJson(),
      'landing_legs': instance.landingLegs?.toJson(),
      'payload_weights':
          instance.payloadWeights?.map((e) => e?.toJson()).toList(),
      'flickr_images': instance.flickrImages,
      'name': instance.name,
      'type': instance.type,
      'active': instance.active,
      'stages': instance.stages,
      'boosters': instance.boosters,
      'cost_per_launch': instance.costPerLaunch,
      'success_rate_pct': instance.successRatePct,
      'first_flight': instance.firstFlight,
      'country': instance.country,
      'company': instance.company,
      'wikipedia': instance.wikipedia,
      'description': instance.description,
      'id': instance.id,
    };
