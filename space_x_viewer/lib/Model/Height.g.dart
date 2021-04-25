// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Height.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Height _$HeightFromJson(Map<String, dynamic> json) {
  return $checkedNew('Height', json, () {
    final val = Height(
      $checkedConvert(json, 'meters', (v) => (v as num?)?.toDouble()),
      $checkedConvert(json, 'feet', (v) => (v as num?)?.toDouble()),
    );
    return val;
  });
}

Map<String, dynamic> _$HeightToJson(Height instance) => <String, dynamic>{
      'meters': instance.meters,
      'feet': instance.feet,
    };
