import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardPage extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const DashboardPage({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: navigationShell,
        bottomNavigationBar: NavigationBar(
          height: 64,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: (int index) => _onTap(context, index),
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.format_list_bulleted),
              label: 'Company List',
            ),
          ],
        ));
  }

  void _onTap(BuildContext context, int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
