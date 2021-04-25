import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

part 'Links.g.dart';

@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class Links{
  final String? website;
  final dynamic flickr;
  final String? twitter;
  @JsonKey(name: "elon_twitter")
  final String? elonTwitter;
  final String? presskit;
  final String? webcast;
  final String? youtubeId;
  final String? wikipedia;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);

  Links(this.website, this.flickr, this.twitter, this.elonTwitter, this.presskit, this.webcast, this.youtubeId, this.wikipedia);
}
