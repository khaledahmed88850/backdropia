import 'package:backdropia/core/models/get_params_model/get_params_model.dart';
import 'package:backdropia/features/home/domain/repo/home_repo.dart';
import 'package:bloc/bloc.dart';

import 'get_random_photos_state.dart';

class GetRandomPhotosCubit extends Cubit<GetRandomPhotosState> {
  GetRandomPhotosCubit(this.homeRepo) : super(GetRandomPhotosInitial());
  final HomeRepo homeRepo;

  Future<void> getRandomPhotos({required GetParamsModel getParamsModel}) async {
    emit(GetRandomPhotosLoading());
    final result = await homeRepo.getThreeRandomPhotos(
      getParamsModel: getParamsModel,
    );
    result.fold(
      (l) => emit(GetRandomPhotosFailure('my error message')),
      (r) => emit(GetRandomPhotosSuccess(r)),
    );
  }
}
