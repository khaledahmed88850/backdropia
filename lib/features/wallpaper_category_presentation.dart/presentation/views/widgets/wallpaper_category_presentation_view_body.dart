import 'package:backdropia/core/models/get_params_model/get_params_model.dart';
import 'package:backdropia/core/widgets/custom_app_bar.dart';
import 'package:backdropia/features/wallpaper_category_presentation.dart/presentation/views/widgets/category_wallpapers_sliver_grid_builder.dart';
import 'package:flutter/cupertino.dart';

class WallpaperCategoryPresentationViewBody extends StatelessWidget {
  const WallpaperCategoryPresentationViewBody({super.key, required this.tag});
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: buildAppBar(
              onPressed: () {
                Navigator.of(context).popUntil(ModalRoute.withName("/"));
              },
              context: context,
              title: tag,
            ),
          ),
          CategoryWallpapersSliverGridBuilder(
            getParamsModel: GetParamsModel(query: tag , perPage: 30),
          ),
        ],
      ),
    );
  }
}
