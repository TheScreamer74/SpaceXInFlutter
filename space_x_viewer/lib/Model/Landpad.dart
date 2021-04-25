import 'package:json_annotation/json_annotation.dart';

part 'Landpad.g.dart';

@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class Landpad {
  final String? name;
  final String? fullName;
  final String? type;
  final String? locality;
  final String? region;
  final double? latitude;
  final double? longitude;
  final int? landingAttempts;
  final int? landingSuccesses;
  final String? wikipedia;
  final String? details;
  final List<String?>? launches;
  final String? status;
  final String? id;

  factory Landpad.fromJson(Map<String, dynamic> json) => _$LandpadFromJson(json);

  Map<String, dynamic> toJson() => _$LandpadToJson(this);

  static List<Landpad> parseLandpads(List<dynamic> json) {
    List<dynamic> jsonArray = json;
    return jsonArray.map<Landpad>((json) => Landpad.fromJson(json)).toList();
  }

  Landpad(this.name, this.fullName, this.type, this.locality, this.region, this.latitude, this.longitude, this.landingAttempts, this.landingSuccesses, this.wikipedia, this.details, this.launches, this.status, this.id);
}