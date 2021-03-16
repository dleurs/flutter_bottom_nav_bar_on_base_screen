import 'package:flutter/material.dart';
import 'package:keep_bottomnav/base_screen.dart';
import 'package:keep_bottomnav/route_config.dart';

class ComputerScreen extends StatefulWidget {
  @override
  _ComputerScreenState createState() => _ComputerScreenState();
}

class _ComputerScreenState extends BaseScreenState<ComputerScreen> {
  @override
  String get currentRoute => AppRoutes.computer;

  @override
  Widget buildScreen(BuildContext context) {
    return Center(
      child:
          Text("Computer screen", style: Theme.of(context).textTheme.headline3),
    );
  }
}
