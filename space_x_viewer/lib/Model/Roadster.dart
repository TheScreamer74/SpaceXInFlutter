import 'package:json_annotation/json_annotation.dart';

part 'Roadster.g.dart';

@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class Roadster {

  @JsonKey(name: "flickr_images")
  final List<String?>? flickrImages;
  final String? name;
  @JsonKey(name: "launch_date_utc")
  final String? launchDateUtc;
  @JsonKey(name: "launch_date_unix")
  final double launchDateUnix;
  @JsonKey(name: "launch_mass_kg")
  final int launchMassKg;
  @JsonKey(name: "launch_mass_lbs")
  final int launchMassLbs;
  @JsonKey(name: "norad_id")
  final int noradId;
  @JsonKey(name: "epoch_jd")
  final double epochJd;
  @JsonKey(name: "orbit_type")
  final String? orbitType;
  @JsonKey(name: "apoapsis_au")
  final double apoapsisAu;
  @JsonKey(name: "periapsis_au")
  final double periapsisAu;
  @JsonKey(name: "semi_major_axis_au")
  final double semiMajorAxisAu;
  final double eccentricity;
  final double inclination;
  final double longitude;
  @JsonKey(name: "periapsis_arg")
  final double periapsisArg;
  @JsonKey(name: "period_days")
  final double periodDays;
  @JsonKey(name: "speed_kph")
  final double speedKph;
  @JsonKey(name: "speed_mph")
  final double speedMph;
  @JsonKey(name: "earth_distance_km")
  final double earthDistanceKm;
  @JsonKey(name: "earth_distance_mi")
  final double earthDistanceMi;
  @JsonKey(name: "mars_distance_km")
  final double marsDistanceKm;
  @JsonKey(name: "mars_distance_mi")
  final double marsDistanceMi;
  final String? wikipedia;
  final String? video;
  final String? details;
  final String? id;


  factory Roadster.fromJson(Map<String, dynamic> json) => _$RoadsterFromJson(json);

  Map<String, dynamic> toJson() => _$RoadsterToJson(this);

  Roadster(this.flickrImages,
          this.name,
          this.launchDateUtc,
          this.launchDateUnix,
          this.launchMassKg,
          this.launchMassLbs,
          this.noradId,
          this.epochJd,
          this.orbitType,
          this.apoapsisAu,
          this.periapsisAu,
          this.semiMajorAxisAu,
          this.eccentricity,
          this.inclination,
          this.longitude,
          this.periapsisArg,
          this.periodDays,
          this.speedKph,
          this.speedMph,
          this.earthDistanceKm,
          this.earthDistanceMi,
          this.marsDistanceKm,
          this.marsDistanceMi,
          this.wikipedia,
          this.video,
          this.details,
          this.id);

}