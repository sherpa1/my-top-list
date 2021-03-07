import 'package:flutter/material.dart';
import 'package:my_top_list/models/Item.dart';

import 'package:my_top_list/data/items.dart' as staticData;

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Item> _items;

  @override
  void initState() {
    _items = staticData.items;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (BuildContext context, int index) {
            final Item item = _items[index];

            return Card(
              child: ListTile(
                title: Text(
                  item.title,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
