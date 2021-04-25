// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Fairings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fairings _$FairingsFromJson(Map<String, dynamic> json) {
  return $checkedNew('Fairings', json, () {
    final val = Fairings(
      $checkedConvert(json, 'reused', (v) => v as bool?),
      $checkedConvert(json, 'recovery_attemps', (v) => v as bool?),
      $checkedConvert(json, 'recovered', (v) => v as bool?),
      $checkedConvert(json, 'ships',
          (v) => (v as List<dynamic>?)?.map((e) => e as String?).toList()),
    );
    return val;
  }, fieldKeyMap: const {'recoveryAttempt': 'recovery_attemps'});
}

Map<String, dynamic> _$FairingsToJson(Fairings instance) => <String, dynamic>{
      'reused': instance.reused,
      'recovery_attemps': instance.recoveryAttempt,
      'recovered': instance.recovered,
      'ships': instance.ships,
    };
