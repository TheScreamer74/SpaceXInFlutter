import 'package:json_annotation/json_annotation.dart';

part 'Core.g.dart';

@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class Core {
  final String? core;
  final int? flight;
  final bool? gridfins;
  final bool? legs;
  final bool? reused;
  @JsonKey(name: "landing_attempt")
  final bool? landingAttempt;
  @JsonKey(name: "landing_success")
  final bool? landingSuccess;
  @JsonKey(name: "landing_type")
  final String? landingType;
  final String? landpad;

  factory Core.fromJson(Map<String, dynamic> json) => _$CoreFromJson(json);

  Map<String, dynamic> toJson() => _$CoreToJson(this);


  static List<Core> parseCrew(List<dynamic> json) {
    List<dynamic> jsonArray = json;
    return jsonArray.map<Core>((json) => Core.fromJson(json)).toList();
  }

  Core(this.core, this.flight, this.gridfins, this.legs, this.reused, this.landingAttempt, this.landingSuccess, this.landingType, this.landpad);

}