// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Links _$LinksFromJson(Map<String, dynamic> json) {
  return $checkedNew('Links', json, () {
    final val = Links(
      $checkedConvert(json, 'website', (v) => v as String?),
      $checkedConvert(json, 'flickr', (v) => v),
      $checkedConvert(json, 'twitter', (v) => v as String?),
      $checkedConvert(json, 'elon_twitter', (v) => v as String?),
      $checkedConvert(json, 'presskit', (v) => v as String?),
      $checkedConvert(json, 'webcast', (v) => v as String?),
      $checkedConvert(json, 'youtube_id', (v) => v as String?),
      $checkedConvert(json, 'wikipedia', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {
    'elonTwitter': 'elon_twitter',
    'youtubeId': 'youtube_id'
  });
}

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'website': instance.website,
      'flickr': instance.flickr,
      'twitter': instance.twitter,
      'elon_twitter': instance.elonTwitter,
      'presskit': instance.presskit,
      'webcast': instance.webcast,
      'youtube_id': instance.youtubeId,
      'wikipedia': instance.wikipedia,
    };
