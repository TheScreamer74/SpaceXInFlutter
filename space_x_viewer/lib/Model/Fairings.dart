import 'package:json_annotation/json_annotation.dart';

part 'Fairings.g.dart';

@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class Fairings {
  final bool? reused;
  @JsonKey(name: "recovery_attemps")
  final bool? recoveryAttempt;
  final bool? recovered;
  final List<String?>? ships;

  factory Fairings.fromJson(Map<String, dynamic> json) => _$FairingsFromJson(json);

  Map<String, dynamic> toJson() => _$FairingsToJson(this);



  Fairings(this.reused, this.recoveryAttempt, this.recovered, this.ships);
}