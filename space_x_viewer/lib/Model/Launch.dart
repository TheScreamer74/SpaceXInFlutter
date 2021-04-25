
import 'package:json_annotation/json_annotation.dart';
import 'package:space_x_viewer/Model/Failure.dart';
import 'package:space_x_viewer/Model/Fairings.dart';
import 'package:space_x_viewer/Model/Links.dart';

import 'package:space_x_viewer/Model/Core.dart';
part 'Launch.g.dart';

@JsonSerializable(
    checked: true, explicitToJson: true, fieldRename: FieldRename.snake
)
class Launch{

  final Fairings? fairings;
  final Links? links;
  @JsonKey(name: "static_fire_date_utc")
  final String? staticFireDateUtc;
  @JsonKey(name: "static_fire_date_unix")
  final double? staticFireDateUnix;
  final bool? tbd;
  final bool? net;
  final int? window;
  final String? rocket;
  final bool? success;
  final String? details;
  final List<String?>? crew;
  final List<String?>? ships;
  final List<String?>? capsules;
  final List<String?>? payloads;
  final String? launchpad;
  @JsonKey(name: "auto_update")
  final bool? autoUpdate;
  @JsonKey(name: "launch_library_id")
  final String? launchLibraryId;
  final List<Failure?>? failure;
  @JsonKey(name: "flight_number")
  final int flightNumber;
  final String? name;
  @JsonKey(name: "date_utc")
  final String? dateUtc;
  @JsonKey(name: "date_unix")
  final double? dateUnix;
  @JsonKey(name: "date_local")
  final String? dateLocal;
  @JsonKey(name: "date_precision")
  final String? datePrecision;
  final bool? upcoming;
  final List<Core?>? cores;
  final String? id;



  static List<Launch> parseLaunch(List<dynamic> json) {
    List<dynamic> jsonArray = json;
    return jsonArray.map<Launch>((json) => Launch.fromJson(json)).toList();
  }

  factory Launch.fromJson(Map<String, dynamic> json) => _$LaunchFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchToJson(this);

  Launch(this.fairings, this.links, this.staticFireDateUtc, this.staticFireDateUnix, this.tbd, this.net, this.window, this.rocket, this.success, this.details,
         this.crew, this.ships, this.capsules, this.payloads, this.launchpad, this.autoUpdate, this.launchLibraryId, this.failure, this.flightNumber, this.name, this.dateUtc, this.dateUnix, this.dateLocal, this.datePrecision, this.upcoming, this.cores, this.id);

}