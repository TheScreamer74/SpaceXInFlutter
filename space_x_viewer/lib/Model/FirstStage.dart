import 'package:json_annotation/json_annotation.dart';
part 'FirstStage.g.dart';

@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class FirstStage {

  @JsonKey(name: "thrust_sea_level")
  final ThrustSeaLevel? thrustSeaLevel;
  @JsonKey(name: "thrust_vacuum")
  final ThrustVacuum? thrustVacuum;
  final bool? reusable;
  final int? engine;
  @JsonKey(name: "fuel_amount_tons")
  final double? fuelAmountTons;
  @JsonKey(name: "burn_time_sec")
  final int? burnTimeSec;

  factory FirstStage.fromJson(Map<String, dynamic> json) => _$FirstStageFromJson(json);

  FirstStage(this.thrustSeaLevel, this.thrustVacuum, this.reusable, this.engine, this.fuelAmountTons, this.burnTimeSec);

  Map<String, dynamic> toJson() => _$FirstStageToJson(this);

}

@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class ThrustVacuum {

  final int? kN;
  final double? lbf;

  factory ThrustVacuum.fromJson(Map<String, dynamic> json) => _$ThrustVacuumFromJson(json);

  ThrustVacuum(this.kN, this.lbf);

  Map<String, dynamic> toJson() => _$ThrustVacuumToJson(this);
}

@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class ThrustSeaLevel {

  final int? kN;
  final double? lbf;

  factory ThrustSeaLevel.fromJson(Map<String, dynamic> json) => _$ThrustSeaLevelFromJson(json);

  ThrustSeaLevel(this.kN, this.lbf);

  Map<String, dynamic> toJson() => _$ThrustSeaLevelToJson(this);
}