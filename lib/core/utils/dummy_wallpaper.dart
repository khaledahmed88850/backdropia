import 'package:backdropia/core/entities/urls_entity.dart';
import 'package:backdropia/core/entities/wallpaper_entity.dart';

List<WallpaperEntity> getDummyWallpaper() {
  return [
    dummyWallpaper,
    dummyWallpaper,
    dummyWallpaper,
    dummyWallpaper,
    dummyWallpaper,
    dummyWallpaper,
    dummyWallpaper,
    dummyWallpaper,
    dummyWallpaper,
  ];
}

WallpaperEntity dummyWallpaper = WallpaperEntity(
  id: '1682685794036-3c1e5b1c5c7b',
  urls: UrlsEntity(
    raw:
        'https://images.unsplash.com/photo-1682685794036-3c1e5b1c5c7b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    full:
        'https://images.unsplash.com/photo-1682685794036-3c1e5b1c5c7b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    regular:
        'https://images.unsplash.com/photo-1682685794036-3c1e5b1c5c7b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    small:
        'https://images.unsplash.com/photo-1682685794036-3c1e5b1c5c7b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    smallS3:
        'https://images.unsplash.com/photo-1682685794036-3c1e5b1c5c7b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    thumb:
        'https://images.unsplash.com/photo-1682685794036-3c1e5b1c5c7b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
  ),
);
