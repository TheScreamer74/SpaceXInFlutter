// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Crewmate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Crewmate _$CrewmateFromJson(Map<String, dynamic> json) {
  return $checkedNew('Crewmate', json, () {
    final val = Crewmate(
      $checkedConvert(json, 'name', (v) => v as String?),
      $checkedConvert(json, 'agency', (v) => v as String?),
      $checkedConvert(json, 'image', (v) => v as String?),
      $checkedConvert(json, 'wikipedia', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$CrewmateToJson(Crewmate instance) => <String, dynamic>{
      'name': instance.name,
      'agency': instance.agency,
      'image': instance.image,
      'wikipedia': instance.wikipedia,
    };
