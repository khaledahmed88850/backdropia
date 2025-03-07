import 'package:backdropia/core/entities/urls_entity.dart';
import 'package:hive/hive.dart';
part 'wallpapers_entity.g.dart';

@HiveType(typeId: 12)
class WallpaperEntity extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final UrlsEntity url;

  WallpaperEntity({required this.id, required this.url});
}
