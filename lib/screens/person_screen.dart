import 'package:flutter/material.dart';
import 'package:keep_bottomnav/base_screen.dart';
import 'package:keep_bottomnav/route_config.dart';

class PersonScreen extends StatefulWidget {
  @override
  _PersonScreenState createState() => _PersonScreenState();
}

class _PersonScreenState extends BaseScreenState<PersonScreen> {
  @override
  String get currentRoute => AppRoutes.person;

  @override
  Widget buildScreen(BuildContext context) {
    return Center(
      child:
          Text("Person screen", style: Theme.of(context).textTheme.headline3),
    );
  }
}
