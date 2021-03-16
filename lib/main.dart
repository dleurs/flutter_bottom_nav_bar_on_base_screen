import 'package:flutter/material.dart';
import 'package:keep_bottomnav/route_config.dart';
import 'package:keep_bottomnav/screens/computer_screen.dart';
import 'package:keep_bottomnav/screens/person_screen.dart';
import 'package:keep_bottomnav/screens/phone_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Keep bottom navigation',
      themeMode: ThemeMode.dark,
      onGenerateRoute: _generateRoute,
    );
  }

  Route<dynamic> _generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.computer:
        return MaterialPageRoute(builder: (context) => ComputerScreen());
      case AppRoutes.phone:
        return MaterialPageRoute(builder: (context) => PhoneScreen());
      case AppRoutes.person:
      default:
        return MaterialPageRoute(builder: (context) => PersonScreen());
    }
  }
}
