import 'package:flutter/material.dart';

mixin SnackbarMixin<T extends StatefulWidget> on State<T> {
  void showSnackBar(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }
}
