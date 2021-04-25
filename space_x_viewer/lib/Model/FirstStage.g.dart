// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FirstStage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FirstStage _$FirstStageFromJson(Map<String, dynamic> json) {
  return $checkedNew('FirstStage', json, () {
    final val = FirstStage(
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
      $checkedConvert(json, 'reusable', (v) => v as bool?),
      $checkedConvert(json, 'engine', (v) => v as int?),
      $checkedConvert(json, 'fuel_amount_tons', (v) => (v as num?)?.toDouble()),
      $checkedConvert(json, 'burn_time_sec', (v) => v as int?),
    );
    return val;
  }, fieldKeyMap: const {
    'thrustSeaLevel': 'thrust_sea_level',
    'thrustVacuum': 'thrust_vacuum',
    'fuelAmountTons': 'fuel_amount_tons',
    'burnTimeSec': 'burn_time_sec'
  });
}

Map<String, dynamic> _$FirstStageToJson(FirstStage instance) =>
    <String, dynamic>{
      'thrust_sea_level': instance.thrustSeaLevel?.toJson(),
      'thrust_vacuum': instance.thrustVacuum?.toJson(),
      'reusable': instance.reusable,
      'engine': instance.engine,
      'fuel_amount_tons': instance.fuelAmountTons,
      'burn_time_sec': instance.burnTimeSec,
    };

ThrustVacuum _$ThrustVacuumFromJson(Map<String, dynamic> json) {
  return $checkedNew('ThrustVacuum', json, () {
    final val = ThrustVacuum(
      $checkedConvert(json, 'k_n', (v) => v as int?),
      $checkedConvert(json, 'lbf', (v) => (v as num?)?.toDouble()),
    );
    return val;
  }, fieldKeyMap: const {'kN': 'k_n'});
}

Map<String, dynamic> _$ThrustVacuumToJson(ThrustVacuum instance) =>
    <String, dynamic>{
      'k_n': instance.kN,
      'lbf': instance.lbf,
    };

ThrustSeaLevel _$ThrustSeaLevelFromJson(Map<String, dynamic> json) {
  return $checkedNew('ThrustSeaLevel', json, () {
    final val = ThrustSeaLevel(
      $checkedConvert(json, 'k_n', (v) => v as int?),
      $checkedConvert(json, 'lbf', (v) => (v as num?)?.toDouble()),
    );
    return val;
  }, fieldKeyMap: const {'kN': 'k_n'});
}

Map<String, dynamic> _$ThrustSeaLevelToJson(ThrustSeaLevel instance) =>
    <String, dynamic>{
      'k_n': instance.kN,
      'lbf': instance.lbf,
    };
