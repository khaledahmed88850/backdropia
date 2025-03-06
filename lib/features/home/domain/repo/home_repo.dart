import 'package:backdropia/core/entities/wallpapers_entity.dart';
import 'package:backdropia/core/error/failure.dart';
import 'package:backdropia/core/models/get_params_model/get_params_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {

  Future<Either<Failure, List<WallpaperEntity>>> getPhotos ({required GetParamsModel getParamsModel});
  Future<Either<Failure, List<WallpaperEntity>>> getPhotosByCategory ({required GetParamsModel getParamsModel});
  Future<Either<Failure, List<WallpaperEntity>>> getThreeRandomPhotos ({required GetParamsModel getParamsModel});
}