import 'package:json_annotation/json_annotation.dart';
part 'Diameter.g.dart';

@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class Diameter {

  final double? meters;
  final double? feet;

  factory Diameter.fromJson(Map<String, dynamic> json) => _$DiameterFromJson(json);

  Diameter(this.meters, this.feet);

  Map<String, dynamic> toJson() => _$DiameterToJson(this);

}