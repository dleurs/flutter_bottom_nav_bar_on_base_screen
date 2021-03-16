import 'package:flutter/material.dart';
import 'package:keep_bottomnav/bottom_nav_bar_item.dart';
import 'package:keep_bottomnav/route_config.dart';

class BottomNavBar extends StatelessWidget {
  final String selectedRoute;
  final ValueChanged<String> onSelectRoute;

  BottomNavBar({this.selectedRoute, this.onSelectRoute});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double itemWidth = (screenWidth / 3);
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(bottom: 10),
          color: Colors.white,
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _buildNavigationItem(
                AppRoutes.computer,
                icon: Icon(Icons.computer),
                title: "Computer 1",
                itemWidth: itemWidth,
              ),
              _buildNavigationItem(
                AppRoutes.phone,
                icon: Icon(Icons.phone),
                title: "Phone 2",
                itemWidth: itemWidth,
              ),
              _buildNavigationItem(
                AppRoutes.person,
                icon: Icon(Icons.person),
                title: "Person 3",
                itemWidth: itemWidth,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavigationItem(String route,
      {Widget icon, String title, itemWidth}) {
    return BottomNavBarItem(
      isSelected: selectedRoute == route,
      icon: icon,
      title: title,
      minWidth: itemWidth,
      onTap: () {
        if (onSelectRoute != null) {
          onSelectRoute(route);
        }
      },
    );
  }
}
