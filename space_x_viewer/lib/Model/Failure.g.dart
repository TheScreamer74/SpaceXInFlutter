// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Failure _$FailureFromJson(Map<String, dynamic> json) {
  return $checkedNew('Failure', json, () {
    final val = Failure(
      $checkedConvert(json, 'time', (v) => v as int?),
      $checkedConvert(json, 'altitude', (v) => (v as num?)?.toDouble()),
      $checkedConvert(json, 'reason', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$FailureToJson(Failure instance) => <String, dynamic>{
      'time': instance.time,
      'altitude': instance.altitude,
      'reason': instance.reason,
    };
