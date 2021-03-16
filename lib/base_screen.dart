import 'package:flutter/material.dart';
import 'package:keep_bottomnav/bottom_nav_bar.dart';

abstract class BaseScreenState<T extends StatefulWidget> extends State<T> {
  String get currentRoute;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: this.buildAppBar(context),
      body: this.buildScreen(context),
      bottomNavigationBar: this.buildBottomNavigationBar(context),
      floatingActionButton: this.buildFloatingActionButton(context),
    );
  }

  Widget buildScreen(BuildContext context);

  PreferredSizeWidget buildAppBar(BuildContext context) {
    return null;
  }

  Widget buildBottomNavigationBar(BuildContext context) {
    return BottomNavBar(
      selectedRoute: currentRoute,
      onSelectRoute: _onItemTapped,
    );
  }

  Widget buildFloatingActionButton(BuildContext context) {
    return null;
  }

  bool get centerFloatingActionButton => false;

  void _onItemTapped(String route) {
    Navigator.pushNamedAndRemoveUntil(context, route, (route) => false);
  }
}
