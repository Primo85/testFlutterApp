import 'dart:async';
import 'package:flutter/material.dart';
import 'package:test_flutter_app/routed_app.dart';

void main() {
  // 3.13.1
  runZonedGuarded(() async {
    runApp(RoutedApp());
  }, _errorHandler);
}

void _errorHandler(Object error, StackTrace? stackTrace) {
  print(error);
}
