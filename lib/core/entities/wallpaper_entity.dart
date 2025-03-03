import 'package:backdropia/core/entities/urls_entity.dart';
import 'package:hive/hive.dart';
part "wallpaper_entity.g.dart";
@HiveType(typeId: 6)
class WallpaperEntity extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final UrlsEntity urls;

  WallpaperEntity({required this.id, required this.urls});
}
