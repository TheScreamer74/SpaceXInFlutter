import 'package:json_annotation/json_annotation.dart';
import 'package:space_x_viewer/Model/Diameter.dart';
import 'package:space_x_viewer/Model/Height.dart';
part 'SecondStage.g.dart';

@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class SecondStage {

  final Thrust? thrust;
  final Payloads? payloads;
  final bool? reusable;
  final int? engine;
  @JsonKey(name: "fuel_amount_tons")
  final double? fuelAmountTons;
  @JsonKey(name: "burn_time_sec")
  final int? burnTimeSec;

  factory SecondStage.fromJson(Map<String, dynamic> json) => _$SecondStageFromJson(json);

  SecondStage(this.thrust, this.payloads, this.reusable, this.engine, this.fuelAmountTons, this.burnTimeSec);

  Map<String, dynamic> toJson() => _$SecondStageToJson(this);

}


@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class Payloads {

  @JsonKey(name: "composite_fairing")
  final CompositeFairing? compositeFairing;
  @JsonKey(name: "option_1")
  final String? option1;

  factory Payloads.fromJson(Map<String, dynamic> json) => _$PayloadsFromJson(json);

  Payloads(this.compositeFairing, this.option1);

  Map<String, dynamic> toJson() => _$PayloadsToJson(this);
}


@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class CompositeFairing {

  final Height? height;
  final Diameter? diameter;

  factory CompositeFairing.fromJson(Map<String, dynamic> json) => _$CompositeFairingFromJson(json);

  CompositeFairing(this.height, this.diameter);

  Map<String, dynamic> toJson() => _$CompositeFairingToJson(this);
}


@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class Thrust {

  final int? kN;
  final double? lbf;

  factory Thrust.fromJson(Map<String, dynamic> json) => _$ThrustFromJson(json);

  Thrust(this.kN, this.lbf);

  Map<String, dynamic> toJson() => _$ThrustToJson(this);
}

