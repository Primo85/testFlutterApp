import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter_app/history_screen.dart';
import 'package:test_flutter_app/home_screen.dart';

const mainRouteName = 'mainRoute';
final mainRoute = GoRoute(
    path: '/',
    name: mainRouteName,
    builder: (context, state) {
      return const MainPage();
    });

class MainPage extends StatefulWidget {
  const MainPage();

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Spacer(),
        Text('MAIN PAGE'),
        Text('X: ${x}'),
        TextButton(
          onPressed: () {
            _setButton();
          },
          child: Text('CLICK'),
        ),
        TextButton(
          onPressed: () {
            context.pushNamed(homeRouteName);
          },
          child: Text('HOME'),
        ),
        TextButton(
          onPressed: () {
            context.pushNamed(historyRouteName);
          },
          child: Text('HISTORY'),
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
