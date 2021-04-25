// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SecondStage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SecondStage _$SecondStageFromJson(Map<String, dynamic> json) {
  return $checkedNew('SecondStage', json, () {
    final val = SecondStage(
      $checkedConvert(json, 'thrust',
          (v) => v == null ? null : Thrust.fromJson(v as Map<String, dynamic>)),
      $checkedConvert(
          json,
          'payloads',
          (v) =>
              v == null ? null : Payloads.fromJson(v as Map<String, dynamic>)),
      $checkedConvert(json, 'reusable', (v) => v as bool?),
      $checkedConvert(json, 'engine', (v) => v as int?),
      $checkedConvert(json, 'fuel_amount_tons', (v) => (v as num?)?.toDouble()),
      $checkedConvert(json, 'burn_time_sec', (v) => v as int?),
    );
    return val;
  }, fieldKeyMap: const {
    'fuelAmountTons': 'fuel_amount_tons',
    'burnTimeSec': 'burn_time_sec'
  });
}

Map<String, dynamic> _$SecondStageToJson(SecondStage instance) =>
    <String, dynamic>{
      'thrust': instance.thrust?.toJson(),
      'payloads': instance.payloads?.toJson(),
      'reusable': instance.reusable,
      'engine': instance.engine,
      'fuel_amount_tons': instance.fuelAmountTons,
      'burn_time_sec': instance.burnTimeSec,
    };

Payloads _$PayloadsFromJson(Map<String, dynamic> json) {
  return $checkedNew('Payloads', json, () {
    final val = Payloads(
      $checkedConvert(
          json,
          'composite_fairing',
          (v) => v == null
              ? null
              : CompositeFairing.fromJson(v as Map<String, dynamic>)),
      $checkedConvert(json, 'option_1', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {
    'compositeFairing': 'composite_fairing',
    'option1': 'option_1'
  });
}

Map<String, dynamic> _$PayloadsToJson(Payloads instance) => <String, dynamic>{
      'composite_fairing': instance.compositeFairing?.toJson(),
      'option_1': instance.option1,
    };

CompositeFairing _$CompositeFairingFromJson(Map<String, dynamic> json) {
  return $checkedNew('CompositeFairing', json, () {
    final val = CompositeFairing(
      $checkedConvert(json, 'height',
          (v) => v == null ? null : Height.fromJson(v as Map<String, dynamic>)),
      $checkedConvert(
          json,
          'diameter',
          (v) =>
              v == null ? null : Diameter.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$CompositeFairingToJson(CompositeFairing instance) =>
    <String, dynamic>{
      'height': instance.height?.toJson(),
      'diameter': instance.diameter?.toJson(),
    };

Thrust _$ThrustFromJson(Map<String, dynamic> json) {
  return $checkedNew('Thrust', json, () {
    final val = Thrust(
      $checkedConvert(json, 'k_n', (v) => v as int?),
      $checkedConvert(json, 'lbf', (v) => (v as num?)?.toDouble()),
    );
    return val;
  }, fieldKeyMap: const {'kN': 'k_n'});
}

Map<String, dynamic> _$ThrustToJson(Thrust instance) => <String, dynamic>{
      'k_n': instance.kN,
      'lbf': instance.lbf,
    };
