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

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
