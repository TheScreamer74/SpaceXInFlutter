import 'package:json_annotation/json_annotation.dart';
import 'package:space_x_viewer/Model/FirstStage.dart';
part 'Engine.g.dart';

@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class Engine {

  final Isp? isp;
  @JsonKey(name: "thrust_sea_level")
  final ThrustSeaLevel? thrustSeaLevel;
  @JsonKey(name: "thrust_vacuum")
  final ThrustVacuum? thrustVacuum;
  final int? number;
  final String? type;
  final String? version;
  final String? layout;
  @JsonKey(name: "engine_loss_max")
  final int? engineLossMax;
  @JsonKey(name: "propellant_1")
  final String? propellant1;
  @JsonKey(name: "propellant_2")
  final String? propellant2;
  @JsonKey(name: "thrust_to_weight")
  final int? thrustToWeight;


  factory Engine.fromJson(Map<String, dynamic> json) => _$EngineFromJson(json);

  Engine(this.isp, this.thrustSeaLevel, this.thrustVacuum, this.number, this.type, this.version, this.layout, this.engineLossMax, this.propellant1, this.propellant2, this.thrustToWeight);

  Map<String, dynamic> toJson() => _$EngineToJson(this);

}

@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class Isp {

  @JsonKey(name: "sea_level")
  final int? seaLevel;
  final int? vacuum;

  factory Isp.fromJson(Map<String, dynamic> json) => _$IspFromJson(json);

  Isp(this.seaLevel, this.vacuum);

  Map<String, dynamic> toJson() => _$IspToJson(this);

}