import 'package:flutter/material.dart';
import 'package:moviesapp/src/ui/home_page.dart';

void main() {
  runApp(MoviesApp());
}

class MoviesApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies Application',
      theme:  ThemeData.dark(),
      // ThemeData(
      //   primaryColor: Colors.black,
      //   accentColor: Colors.red,
      //   backgroundColor: Colors.grey,
      // ),
      home: HomePage(),
    );
  }
}



