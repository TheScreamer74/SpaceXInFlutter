import 'package:json_annotation/json_annotation.dart';
part 'LandingLegs.g.dart';

@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class LandingLegs {

  final int? number;
  final String? material;

  factory LandingLegs.fromJson(Map<String, dynamic> json) => _$LandingLegsFromJson(json);

  LandingLegs(this.number, this.material);

  Map<String, dynamic> toJson() => _$LandingLegsToJson(this);

}