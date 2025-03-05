import 'package:backdropia/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar({
  void Function()? onPressed,
  required BuildContext context,
  required String title,
}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Theme.of(context).colorScheme.primary,
      ),
      onPressed: onPressed,
    ),
    title: Text(title, style: Styles.semiBold25),
  );
}
