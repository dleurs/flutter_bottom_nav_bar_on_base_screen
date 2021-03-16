import 'package:flutter/material.dart';
import 'package:keep_bottomnav/base_screen.dart';
import 'package:keep_bottomnav/route_config.dart';

class PhoneScreen extends StatefulWidget {
  @override
  _PhoneScreenState createState() => _PhoneScreenState();
}

class _PhoneScreenState extends BaseScreenState<PhoneScreen> {
  @override
  String get currentRoute => AppRoutes.phone;

  @override
  Widget buildScreen(BuildContext context) {
    return Center(
      child: Text("Phone screen", style: Theme.of(context).textTheme.headline3),
    );
  }
}
