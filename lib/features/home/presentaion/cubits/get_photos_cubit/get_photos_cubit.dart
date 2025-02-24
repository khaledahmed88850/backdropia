import 'package:backdropia/core/models/get_params_model/get_params_model.dart';
import 'package:backdropia/core/models/wallpaper/wallpaper.dart';
import 'package:backdropia/features/home/domain/repo/home_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'get_photos_state.dart';

class GetPhotosCubit extends Cubit<GetPhotosState> {
  GetPhotosCubit(this.homeRepo) : super(GetPhotosInitial());
  final HomeRepo homeRepo;

  Future<void> getPhotos({required GetParamsModel getParamsModel}) async {
    emit(GetPhotosLoading());
    final result = await homeRepo.getPhotos(getParamsModel: getParamsModel);
    result.fold(
      (l) => emit(GetPhotosFailure('my error message')),
      (r) => emit(GetPhotosSuccess(r)),
    );
  }
}
