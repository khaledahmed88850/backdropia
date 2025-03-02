import 'package:backdropia/core/entities/wallpaper_entity.dart';
import 'package:backdropia/core/error/failure.dart';
import 'package:backdropia/core/mapper/mapping.dart';
import 'package:backdropia/core/models/get_params_model/get_params_model.dart';
import 'package:backdropia/core/models/wallpaper/wallpaper.dart';
import 'package:backdropia/core/services/api_services.dart';
import 'package:backdropia/core/utils/api_endpoints.dart';
import 'package:backdropia/features/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl({required this.apiServices});
  @override
  Future<Either<Failure, List<WallpaperEntity>>> getPhotos({
    required GetParamsModel getParamsModel,
  }) async {
    try {
      final String endPoint =
          "photos/?query=${getParamsModel.query}&page=${getParamsModel.page}&per_page=${getParamsModel.perPage}&order_by=${getParamsModel.orderBy}&orientation=${getParamsModel.orientation}&client_id=${ApiEndPoints.clientId}";
      final response = await apiServices.getRequest(endPoint);
      List<Wallpaper> wallpapers =
          response.map<Wallpaper>((e) => Wallpaper.fromJson(e)).toList();
      List<WallpaperEntity> wallpapersEntity =
          wallpapers.map((e) => toWallpaperEntity(e)).toList();
      return Right(wallpapersEntity);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(errMesage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<WallpaperEntity>>> getThreeRandomPhotos({
    required GetParamsModel getParamsModel,
  }) async {
    try {
      final String endPoint =
          'photos/random/?count=3&query=${getParamsModel.query}&orientation=${getParamsModel.orientation}&client_id=${ApiEndPoints.clientId}';
      final response = await apiServices.getRequest(endPoint);
      List<Wallpaper> wallpapers =
          response.map<Wallpaper>((e) => Wallpaper.fromJson(e)).toList();
      List<WallpaperEntity> wallpapersEntity =
          wallpapers.map((e) => toWallpaperEntity(e)).toList();
      return Right(wallpapersEntity);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(errMesage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<WallpaperEntity>>> getPhotosByCategory({
    required GetParamsModel getParamsModel,
  }) async {
    try {
      final String endPoint =
          "search/photos/?query=${getParamsModel.query}&page=${getParamsModel.page}&per_page=${getParamsModel.perPage}&order_by=${getParamsModel.orderBy}&orientation=${getParamsModel.orientation}&client_id=${ApiEndPoints.clientId}";
      final response = await apiServices.getRequestAsMap(endPoint);
      List<Wallpaper> wallpapers =
          response['results']
              .map<Wallpaper>((e) => Wallpaper.fromJson(e))
              .toList();
      List<WallpaperEntity> wallpapersEntity =
          wallpapers.map((e) => toWallpaperEntity(e)).toList();
      return Right(wallpapersEntity);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(errMesage: e.toString()));
      }
    }
  }
}
