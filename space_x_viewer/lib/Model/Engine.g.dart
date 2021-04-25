// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Engine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Engine _$EngineFromJson(Map<String, dynamic> json) {
  return $checkedNew('Engine', json, () {
    final val = Engine(
      $checkedConvert(json, 'isp',
          (v) => v == null ? null : Isp.fromJson(v as Map<String, dynamic>)),
      $checkedConvert(
          json,
          'thrust_sea_level',
          (v) => v == null
              ? null
              : ThrustSeaLevel.fromJson(v as Map<String, dynamic>)),
      $checkedConvert(
          json,
          'thrust_vacuum',
          (v) => v == null
              ? null
              : ThrustVacuum.fromJson(v as Map<String, dynamic>)),
      $checkedConvert(json, 'number', (v) => v as int?),
      $checkedConvert(json, 'type', (v) => v as String?),
      $checkedConvert(json, 'version', (v) => v as String?),
      $checkedConvert(json, 'layout', (v) => v as String?),
      $checkedConvert(json, 'engine_loss_max', (v) => v as int?),
      $checkedConvert(json, 'propellant_1', (v) => v as String?),
      $checkedConvert(json, 'propellant_2', (v) => v as String?),
      $checkedConvert(json, 'thrust_to_weight', (v) => v as int?),
    );
    return val;
  }, fieldKeyMap: const {
    'thrustSeaLevel': 'thrust_sea_level',
    'thrustVacuum': 'thrust_vacuum',
    'engineLossMax': 'engine_loss_max',
    'propellant1': 'propellant_1',
    'propellant2': 'propellant_2',
    'thrustToWeight': 'thrust_to_weight'
  });
}

Map<String, dynamic> _$EngineToJson(Engine instance) => <String, dynamic>{
      'isp': instance.isp?.toJson(),
      'thrust_sea_level': instance.thrustSeaLevel?.toJson(),
      'thrust_vacuum': instance.thrustVacuum?.toJson(),
      'number': instance.number,
      'type': instance.type,
      'version': instance.version,
      'layout': instance.layout,
      'engine_loss_max': instance.engineLossMax,
      'propellant_1': instance.propellant1,
      'propellant_2': instance.propellant2,
      'thrust_to_weight': instance.thrustToWeight,
    };

Isp _$IspFromJson(Map<String, dynamic> json) {
  return $checkedNew('Isp', json, () {
    final val = Isp(
      $checkedConvert(json, 'sea_level', (v) => v as int?),
      $checkedConvert(json, 'vacuum', (v) => v as int?),
    );
    return val;
  }, fieldKeyMap: const {'seaLevel': 'sea_level'});
}

Map<String, dynamic> _$IspToJson(Isp instance) => <String, dynamic>{
      'sea_level': instance.seaLevel,
      'vacuum': instance.vacuum,
    };
