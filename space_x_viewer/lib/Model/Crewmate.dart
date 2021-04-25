
import 'package:json_annotation/json_annotation.dart';
part 'Crewmate.g.dart';

@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class Crewmate {

  final String? name;
  final String? agency;
  final String? image;
  final String? wikipedia;

  factory Crewmate.fromJson(Map<String, dynamic> json) => _$CrewmateFromJson(json);

  Crewmate(this.name, this.agency, this.image, this.wikipedia);

  Map<String, dynamic> toJson() => _$CrewmateToJson(this);

  static List<Crewmate> parseCrew(List<dynamic> json) {
    List<dynamic> jsonArray = json;
    return jsonArray.map<Crewmate>((json) => Crewmate.fromJson(json)).toList();
  }
}