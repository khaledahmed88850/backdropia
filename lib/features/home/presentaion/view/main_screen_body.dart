import 'package:backdropia/core/helpers/indexed_stack_provider.dart';
import 'package:backdropia/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:backdropia/features/category/presentation/view/category_view.dart';
import 'package:backdropia/features/favourites/presentation/view/favourites_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_view.dart';

class MainScreenBody extends StatefulWidget {
  const MainScreenBody({super.key});

  @override
  State<MainScreenBody> createState() => _MainScreenBodyState();
}

class _MainScreenBodyState extends State<MainScreenBody> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final indexStack = Provider.of<IndexStackProvider>(context);

    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: indexStack.currentIndex,
        onItemTapped: indexStack.setIndex,
      ),
      body: SafeArea(
        child: IndexedStack(index: indexStack.currentIndex, children: screens),
      ),
    );
  }

  List<Widget> screens = const [HomeView(), CategoryView(), FavouritesView()];
}
