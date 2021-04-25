import 'package:json_annotation/json_annotation.dart';

part 'Headquarters.g.dart';


@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class Headquarters {
  final String address;
  final String city;
  final String state;

  factory Headquarters.fromJson(Map<String, dynamic> json) => _$HeadquartersFromJson(json);

  Map<String, dynamic> toJson() => _$HeadquartersToJson(this);

  Headquarters(this.address, this.city, this.state);
}
