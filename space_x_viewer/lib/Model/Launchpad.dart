import 'package:json_annotation/json_annotation.dart';

part 'Launchpad.g.dart';

@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class Launchpad {
  final String? name;
  final String? fullName;
  final String? locality;
  final String? region;
  final String? timezone;
  final double? latitude;
  final double? longitude;
  @JsonKey(name: "launching_attempts")
  final int? launchingAttempts;
  @JsonKey(name: "launching_successes")
  final int? launchingSuccesses;
  final List<String?>? rockets;
  final List<String?>? launches;
  final String? details;
  final String? status;
  final String? id;


  factory Launchpad.fromJson(Map<String, dynamic> json) => _$LaunchpadFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchpadToJson(this);

  static List<Launchpad> parseLaunchpads(List<dynamic> json) {
    List<dynamic> jsonArray = json;
    return jsonArray.map<Launchpad>((json) => Launchpad.fromJson(json)).toList();
  }

  Launchpad(this.name, this.fullName, this.locality, this.region, this.timezone, this.latitude, this.longitude, this.launchingAttempts, this.launchingSuccesses, this.rockets, this.launches, this.details, this.status, this.id);
}