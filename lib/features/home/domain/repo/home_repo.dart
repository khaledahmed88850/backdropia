import 'package:backdropia/core/error/failure.dart';
import 'package:backdropia/core/models/get_params_model/get_params_model.dart';
import 'package:backdropia/core/models/wallpaper/wallpaper.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {

  Future<Either<Failure, List<Wallpaper>>> getPhotos ({required GetParamsModel getParamsModel});
  Future<Either<Failure, List<Wallpaper>>> getPhotosByCategory ({required GetParamsModel getParamsModel});
  Future<Either<Failure, List<Wallpaper>>> getThreeRandomPhotos ({required GetParamsModel getParamsModel});
}