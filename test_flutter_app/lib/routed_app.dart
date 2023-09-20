import 'package:flutter/material.dart';
import 'package:test_flutter_app/main_screen.dart';
import 'package:test_flutter_app/home_screen.dart';
import 'package:test_flutter_app/history_screen.dart';
import 'package:go_router/go_router.dart';

final _router = GoRouter(
  routes: [ mainRoute, homeRoute, historyRoute],
);

class RoutedApp extends StatelessWidget {
  const RoutedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _router);
  }
}