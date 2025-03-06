import 'package:hive/hive.dart';
part 'wallpapers_entity.g.dart';
@HiveType(typeId: 9)
class WallpaperEntity extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String imageUrl;
  


  WallpaperEntity({required this.id, required this.imageUrl});
}
