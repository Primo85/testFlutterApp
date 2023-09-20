import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_flutter_app/details_screen.dart';
import 'package:test_flutter_app/history_screen.dart';
import 'package:test_flutter_app/home_screen.dart';

const mainRouteName = 'mainRoute';
final mainRoute = GoRoute(
  path: '/',
  name: mainRouteName,
  builder: (context, state) {
    return const MainPage();
  }, routes: [homeRoute, detailsRoute]
);

class MainPage extends StatefulWidget {
  const MainPage();

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  Widget child = HomePage();

  void _setIndex(int index) {
    setState(() {
      if (index == this.index) return;
      this.index = index;
      this.child = _getChild(index);
    });
  }

  Widget _getChild(int index) {
    if (index == 1) {
      return HistoryPage();
    } else if (index == 2) {
      return DetailsPage();
    } else {
      return HomePage();
    }
  }

  List<MainNavigationItem> getTabs(BuildContext context) {
    return [
      MainNavigationItem(
        icon: Assets.home,
        label: "home",
        namedLocation: homeRouteName,
      ),
      MainNavigationItem(
        icon: Assets.home,
        label: "history",
        namedLocation: historyRouteName,
      ),
      MainNavigationItem(
        icon: Assets.homeColor,
        label: "details",
        namedLocation: detailsRouteName,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Some title")),
      body: SafeArea(child: this.child),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          _setIndex(index);
        },
        currentIndex: index,
        items: getTabs(context),
      ),
    );
  }
}

class MainNavigationItem extends BottomNavigationBarItem {
  const MainNavigationItem({
    required this.namedLocation,
    required super.icon,
    required super.label,
    Widget? activeIcon,
  }) : super(activeIcon: activeIcon ?? icon);
  final String namedLocation;
}

class Assets {
  static Color filterColor = Color.fromRGBO(0, 0, 0, 1);

  static Widget home = SvgPicture.asset("assets/home.svg");

  static Widget homeColor = SvgPicture.asset("assets/home.svg",
      color: filterColor);
}