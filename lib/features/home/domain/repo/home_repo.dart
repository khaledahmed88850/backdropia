import 'package:backdropia/core/models/get_params_model/get_params_model.dart';
import 'package:backdropia/core/models/wallpaper/wallpaper.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {

  Future<Either<Exception, List<Wallpaper>>> getPhotos ({required GetParamsModel getParamsModel});
  Future<Either<Exception, List<Wallpaper>>> getThreeRandomPhotos ({required GetParamsModel getParamsModel});
}