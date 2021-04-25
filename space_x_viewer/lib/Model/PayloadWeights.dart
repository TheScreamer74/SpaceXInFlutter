import 'package:json_annotation/json_annotation.dart';
part 'PayloadWeights.g.dart';

@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class PayloadWeights {

  final String? id;
  final String? name;
  final int? kg;
  final int? lb;

  factory PayloadWeights.fromJson(Map<String, dynamic> json) => _$PayloadWeightsFromJson(json);

  PayloadWeights(this.id, this.name, this.kg, this.lb);

  Map<String, dynamic> toJson() => _$PayloadWeightsToJson(this);

  static List<PayloadWeights> parsePayloadWeight(List<dynamic> json) {
    List<dynamic> jsonArray = json;
    return jsonArray.map<PayloadWeights>((json) => PayloadWeights.fromJson(json)).toList();
  }
}