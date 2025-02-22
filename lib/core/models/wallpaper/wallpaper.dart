import 'exif.dart';
import 'links.dart';
import 'location.dart';
import 'topic_submissions.dart';
import 'urls.dart';

class Wallpaper {
  String? id;
  String? slug;
  String? createdAt;
  String? updatedAt;
  dynamic promotedAt;
  int? width;
  int? height;
  String? color;
  String? blurHash;
  dynamic description;
  String? altDescription;
  List<dynamic>? breadcrumbs;
  Urls? urls;
  Links? links;
  int? likes;
  bool? likedByUser;
  List<dynamic>? currentUserCollections;
  dynamic sponsorship;
  TopicSubmissions? topicSubmissions;
  String? assetType;

  Exif? exif;
  Location? location;
  int? views;
  int? downloads;

  Wallpaper({
    this.id,
    this.slug,
    this.createdAt,
    this.updatedAt,
    this.promotedAt,
    this.width,
    this.height,
    this.color,
    this.blurHash,
    this.description,
    this.altDescription,
    this.breadcrumbs,
    this.urls,
    this.links,
    this.likes,
    this.likedByUser,
    this.currentUserCollections,
    this.sponsorship,
    this.topicSubmissions,
    this.assetType,
    this.exif,
    this.location,
    this.views,
    this.downloads,
  });

  factory Wallpaper.fromJson(Map<String, dynamic> json) => Wallpaper(
    id: json['id'] as String?,
    slug: json['slug'] as String?,
   
    createdAt: json['created_at'] as String?,
    updatedAt: json['updated_at'] as String?,
    promotedAt: json['promoted_at'] as dynamic,
    width: json['width'] as int?,
    height: json['height'] as int?,
    color: json['color'] as String?,
    blurHash: json['blur_hash'] as String?,
    description: json['description'] as dynamic,
    altDescription: json['alt_description'] as String?,
    breadcrumbs: json['breadcrumbs'] as List<dynamic>?,
    urls:
        json['urls'] == null
            ? null
            : Urls.fromJson(json['urls'] as Map<String, dynamic>),
    links:
        json['links'] == null
            ? null
            : Links.fromJson(json['links'] as Map<String, dynamic>),
    likes: json['likes'] as int?,
    likedByUser: json['liked_by_user'] as bool?,
    currentUserCollections: json['current_user_collections'] as List<dynamic>?,
    sponsorship: json['sponsorship'] as dynamic,
    topicSubmissions:
        json['topic_submissions'] == null
            ? null
            : TopicSubmissions.fromJson(
              json['topic_submissions'] as Map<String, dynamic>,
            ),
    assetType: json['asset_type'] as String?,
  
    exif:
        json['exif'] == null
            ? null
            : Exif.fromJson(json['exif'] as Map<String, dynamic>),
    location:
        json['location'] == null
            ? null
            : Location.fromJson(json['location'] as Map<String, dynamic>),
    views: json['views'] as int?,
    downloads: json['downloads'] as int?,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'slug': slug,
    'created_at': createdAt,
    'updated_at': updatedAt,
    'promoted_at': promotedAt,
    'width': width,
    'height': height,
    'color': color,
    'blur_hash': blurHash,
    'description': description,
    'alt_description': altDescription,
    'breadcrumbs': breadcrumbs,
    'urls': urls?.toJson(),
    'links': links?.toJson(),
    'likes': likes,
    'liked_by_user': likedByUser,
    'current_user_collections': currentUserCollections,
    'sponsorship': sponsorship,
    'topic_submissions': topicSubmissions?.toJson(),
    'asset_type': assetType,
    'exif': exif?.toJson(),
    'location': location?.toJson(),
    'views': views,
    'downloads': downloads,
  };
}
