import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';

Future <void> setWallpaperFunction({
  required String image,
  required String screen,
}) async {
  int location;
  if (screen == 'home') {
    location = WallpaperManager.HOME_SCREEN;
  }
  else if (screen == 'lock') {
    location = WallpaperManager.LOCK_SCREEN;
  }
  else{
    location = WallpaperManager.BOTH_SCREEN;
  }
  var file = await DefaultCacheManager().getSingleFile(image);
  bool result = await WallpaperManager.setWallpaperFromFile(
    file.path,
    location,
  ); 
}
