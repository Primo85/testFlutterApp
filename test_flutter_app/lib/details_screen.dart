import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

const detailsRouteName = 'detailsRoute';
final detailsRoute = GoRoute(
  path: '/details',
  name: detailsRouteName,
  builder: (context, state) {
    return const DetailsPage();
  },
);

class DetailsPage extends StatefulWidget {
  const DetailsPage();

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            Spacer(),
            Text('DETAILS'),
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
