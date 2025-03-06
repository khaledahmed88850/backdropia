import 'package:backdropia/core/entities/urls_entity.dart';
import 'package:backdropia/core/entities/wallpapers_entity.dart';
import 'package:backdropia/core/models/wallpaper/urls.dart';
import 'package:backdropia/core/models/wallpaper/wallpaper.dart';

UrlsEntity toUrlsEntity(Urls urls) => UrlsEntity(
  raw: urls.raw,
  full: urls.full,
  regular: urls.regular,
  small: urls.small,
  thumb: urls.thumb,
  smallS3: urls.smallS3,
);

WallpaperEntity toWallpaperEntity(Wallpaper wallpaper) => WallpaperEntity(
  imageUrl: wallpaper.urls!.regular!,
  id: wallpaper.id,
);