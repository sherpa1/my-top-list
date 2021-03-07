import 'package:flutter/material.dart';
import 'package:my_top_list/widgets/pages/HomePage.dart';

class MyTopList extends StatelessWidget {
  final String _title = "My Top List";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(
        title: _title,
      ),
    );
  }
}
