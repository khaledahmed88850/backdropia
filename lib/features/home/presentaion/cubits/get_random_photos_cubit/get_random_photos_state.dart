import 'package:backdropia/core/models/wallpaper/wallpaper.dart';

sealed class GetRandomPhotosState {}

final class GetRandomPhotosInitial extends GetRandomPhotosState {}

final class GetRandomPhotosLoading extends GetRandomPhotosState {}

final class GetRandomPhotosFailure extends GetRandomPhotosState {
  final String errorMessage;
  GetRandomPhotosFailure(this.errorMessage);
}

final class GetRandomPhotosSuccess extends GetRandomPhotosState {
  final List<Wallpaper> wallpapers;
  GetRandomPhotosSuccess(this.wallpapers);
}
