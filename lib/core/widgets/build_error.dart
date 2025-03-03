import 'package:flutter/material.dart';

void buildError(BuildContext context, String message,
    {Color color = Colors.grey}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(8),
      topRight: Radius.circular(8),
    )),
    duration: const Duration(milliseconds: 400),
    content: Text(message),
    backgroundColor: color,
  ));
}
