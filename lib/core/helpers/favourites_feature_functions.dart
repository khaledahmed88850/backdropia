import 'package:backdropia/constants.dart';
import 'package:backdropia/core/entities/wallpaper_entity.dart';
import 'package:hive/hive.dart';

bool isFavorited(String wallpaperId) {
  final box = Hive.box<WallpaperEntity>(kFavoritesBox);
  return box.containsKey(wallpaperId);
}

void toggleFavorite(WallpaperEntity wallpaper) {
  final box = Hive.box<WallpaperEntity>(kFavoritesBox);
  if (box.containsKey(wallpaper.id)) {
    box.delete(wallpaper.id); 
  } else {
    box.put(wallpaper.id, wallpaper); 
  }
}

List<WallpaperEntity> getFavoriteWallpapers() {
  final box = Hive.box<WallpaperEntity>(kFavoritesBox);
  return box.values.toList(); 
}