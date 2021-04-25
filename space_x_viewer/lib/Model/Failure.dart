import 'package:json_annotation/json_annotation.dart';
part 'Failure.g.dart';

@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class Failure {
  final int? time;
  final double? altitude;
  final String? reason;

  factory Failure.fromJson(Map<String, dynamic> json) => _$FailureFromJson(json);

  Map<String, dynamic> toJson() => _$FailureToJson(this);

  static List<Failure> parseCrew(List<dynamic> json) {
    List<dynamic> jsonArray = json;
    return jsonArray.map<Failure>((json) => Failure.fromJson(json)).toList();
  }

  Failure(this.time, this.altitude, this.reason);


}