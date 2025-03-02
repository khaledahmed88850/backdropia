part of 'get_photos_cubit.dart';

@immutable
sealed class GetPhotosState {}

final class GetPhotosInitial extends GetPhotosState {}
final class GetPhotosLoading extends GetPhotosState {}
final class GetPhotosFailure extends GetPhotosState {
  final String errorMessage;
  GetPhotosFailure(this.errorMessage);
}
final class GetPhotosSuccess extends GetPhotosState {
  final List<WallpaperEntity> wallpapers;
  GetPhotosSuccess(this.wallpapers);
}
