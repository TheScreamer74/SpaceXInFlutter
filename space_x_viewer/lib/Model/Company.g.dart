// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return $checkedNew('Company', json, () {
    final val = Company(
      $checkedConvert(json, 'headquarters',
          (v) => Headquarters.fromJson(v as Map<String, dynamic>)),
      $checkedConvert(
          json, 'links', (v) => Links.fromJson(v as Map<String, dynamic>)),
      $checkedConvert(json, 'name', (v) => v as String),
      $checkedConvert(json, 'founder', (v) => v as String),
      $checkedConvert(json, 'founded', (v) => v as int),
      $checkedConvert(json, 'employees', (v) => v as int),
      $checkedConvert(json, 'vehicles', (v) => v as int),
      $checkedConvert(json, 'launch_sites', (v) => v as int),
      $checkedConvert(json, 'test_sites', (v) => v as int),
      $checkedConvert(json, 'ceo', (v) => v as String),
      $checkedConvert(json, 'cto', (v) => v as String),
      $checkedConvert(json, 'coo', (v) => v as String),
      $checkedConvert(json, 'cto_propulsion', (v) => v as String),
      $checkedConvert(json, 'valuation', (v) => v as int),
      $checkedConvert(json, 'summary', (v) => v as String),
      $checkedConvert(json, 'id', (v) => v as String),
    );
    return val;
  }, fieldKeyMap: const {
    'launchSites': 'launch_sites',
    'testSites': 'test_sites',
    'ctoPropulsion': 'cto_propulsion'
  });
}

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'headquarters': instance.headquarters.toJson(),
      'links': instance.links.toJson(),
      'name': instance.name,
      'founder': instance.founder,
      'founded': instance.founded,
      'employees': instance.employees,
      'vehicles': instance.vehicles,
      'launch_sites': instance.launchSites,
      'test_sites': instance.testSites,
      'ceo': instance.ceo,
      'cto': instance.cto,
      'coo': instance.coo,
      'cto_propulsion': instance.ctoPropulsion,
      'valuation': instance.valuation,
      'summary': instance.summary,
      'id': instance.id,
    };
