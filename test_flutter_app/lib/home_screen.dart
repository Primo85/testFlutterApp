import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

const homeRouteName = 'homeRoute';
final homeRoute = GoRoute(
    path: '/home',
    name: homeRouteName,
    builder: (context, state) {
      return const HomePage();
    });

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Spacer(),
        Text('HOME PAGE'),
        Text('X: ${x}'),
        TextButton(
          onPressed: () {
            _setButton();
          },
          child: Text('CLICK'),
        ),
        Spacer(),
      ],
    ));
  }

  void _setButton() {
    setState(() {
      x = (x == 1) ? 2 : 1;
    });
  }
}
