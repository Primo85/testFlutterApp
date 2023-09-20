import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

const historyRouteName = 'historyRoute';
final historyRoute = GoRoute(
  path: '/history',
  name: historyRouteName,
  builder: (context, state) {
    return const HistoryPage();
  },
);

class HistoryPage extends StatefulWidget {
  const HistoryPage();

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            Spacer(),
            Text('HISTORY'),
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