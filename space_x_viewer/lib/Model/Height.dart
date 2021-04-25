import 'package:json_annotation/json_annotation.dart';
part 'Height.g.dart';

@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class Height {

  final double? meters;
  final double? feet;

  factory Height.fromJson(Map<String, dynamic> json) => _$HeightFromJson(json);

  Height(this.meters, this.feet);

  Map<String, dynamic> toJson() => _$HeightToJson(this);

}