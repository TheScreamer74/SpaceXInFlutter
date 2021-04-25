import 'package:json_annotation/json_annotation.dart';
import 'package:space_x_viewer/Model/Diameter.dart';
import 'package:space_x_viewer/Model/Engine.dart';
import 'package:space_x_viewer/Model/FirstStage.dart';
import 'package:space_x_viewer/Model/LandingLegs.dart';
import 'package:space_x_viewer/Model/PayloadWeights.dart';
import 'package:space_x_viewer/Model/SecondStage.dart';
import 'package:space_x_viewer/Model/Height.dart';
import 'package:space_x_viewer/Model/Mass.dart';
part 'Rocket.g.dart';

@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class Rocket {

  final Height? height;
  final Diameter? diameter;
  final Mass? mass;
  @JsonKey(name: "first_stage")
  final FirstStage? firstStage;
  @JsonKey(name: "second_stage")
  final SecondStage? secondStage;
  final Engine? engine;
  @JsonKey(name: "landing_legs")
  final LandingLegs? landingLegs;
  @JsonKey(name: "payload_weights")
  final List<PayloadWeights?>? payloadWeights;
  @JsonKey(name: "flickr_images")
  final List<String?>? flickrImages;
  final String? name;
  final String? type;
  final bool? active;
  final int? stages;
  final int? boosters;
  @JsonKey(name: "cost_per_launch")
  final double? costPerLaunch;
  @JsonKey(name: "success_rate_pct")
  final double? successRatePct;
  @JsonKey(name: "first_flight")
  final String? firstFlight;
  final String? country;
  final String? company;
  final String? wikipedia;
  final String? description;
  final String? id;



  factory Rocket.fromJson(Map<String, dynamic> json) => _$RocketFromJson(json);

  Rocket(this.height,
      this.diameter,
      this.mass,
      this.firstStage,
      this.secondStage,
      this.engine,
      this.landingLegs,
      this.payloadWeights,
      this.flickrImages,
      this.name,
      this.type,
      this.active,
      this.stages,
      this.boosters,
      this.costPerLaunch,
      this.successRatePct,
      this.firstFlight,
      this.country,
      this.company,
      this.wikipedia,
      this.description,
      this.id);

  Map<String, dynamic> toJson() => _$RocketToJson(this);

  static List<Rocket> parseRocket(List<dynamic> json) {
    List<dynamic> jsonArray = json;
    return jsonArray.map<Rocket>((json) => Rocket.fromJson(json)).toList();
  }

}