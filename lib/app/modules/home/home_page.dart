import 'package:enviroments/app/shared/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Config.title),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Text(
              '${Config.environment} - ${Config.ano}',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Center(
            child: Text(
              'URL API ${Config.baseUrl}',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
