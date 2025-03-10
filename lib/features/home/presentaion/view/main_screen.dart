import 'package:backdropia/core/helpers/indexed_stack_provider.dart';
import 'package:backdropia/features/home/presentaion/view/main_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return IndexStackProvider();
      },
      child: const MainScreenBody(),
    );
  }
}
