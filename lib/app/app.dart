import 'package:flutter/material.dart';
import 'package:ui_app/view/home_screen.dart';

class App extends StatelessWidget {
  @override
  build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
