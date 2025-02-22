import 'nature.dart';
import 'travel.dart';
import 'wallpapers.dart';

class TopicSubmissions {
  Travel? travel;
  Nature? nature;
  Wallpapers? wallpapers;

  TopicSubmissions({this.travel, this.nature, this.wallpapers});

  factory TopicSubmissions.fromJson(Map<String, dynamic> json) {
    return TopicSubmissions(
      travel:
          json['travel'] == null
              ? null
              : Travel.fromJson(json['travel'] as Map<String, dynamic>),
      nature:
          json['nature'] == null
              ? null
              : Nature.fromJson(json['nature'] as Map<String, dynamic>),
      wallpapers:
          json['wallpapers'] == null
              ? null
              : Wallpapers.fromJson(json['wallpapers'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
    'travel': travel?.toJson(),
    'nature': nature?.toJson(),
    'wallpapers': wallpapers?.toJson(),
  };
}
