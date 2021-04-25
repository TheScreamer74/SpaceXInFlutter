import 'package:json_annotation/json_annotation.dart';
part 'Mass.g.dart';

@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class Mass {

  final int? kg;
  final int? lb;

  factory Mass.fromJson(Map<String, dynamic> json) => _$MassFromJson(json);

  Mass(this.kg, this.lb);

  Map<String, dynamic> toJson() => _$MassToJson(this);

}