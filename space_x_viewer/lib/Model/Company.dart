import 'package:json_annotation/json_annotation.dart';
import 'Headquarters.dart';
import 'Links.dart';

part 'Company.g.dart';

@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class Company{
  final Headquarters headquarters;
  final Links links;
  final String name;
  final String founder;
  final int founded;
  final int employees;
  final int vehicles;
  @JsonKey(name: "launch_sites")
  final int launchSites;
  @JsonKey(name: "test_sites")
  final int testSites;
  final String ceo;
  final String cto;
  final String coo;
  @JsonKey(name: "cto_propulsion")
  final String ctoPropulsion;
  final int valuation;
  final String summary;
  final String id;

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);

  Company(this.headquarters, this.links, this.name, this.founder, this.founded, this.employees, this.vehicles, this.launchSites, this.testSites, this.ceo, this.cto, this.coo, this.ctoPropulsion, this.valuation, this.summary, this.id);

}