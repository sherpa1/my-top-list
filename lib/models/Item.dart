import 'package:my_top_list/models/Tag.dart';

class Item {
  static const List<String> TYPES = [
    'ARTWORK',
    'BOOK',
    'CARTOON',
    'COMICS',
    'DRAMA',
    'DOCUMENTARY',
    'MOVIE',
    'PLACE',
    'SHOW',
    'SONG',
  ];

  String author; //if relevant
  String title; //must be unique
  String desc; //description
  String image; //url of a remote image
  String _type;
  int rate; //min 0 max 5
  bool done; // if item is a Book = read, if item is a Movie = listened...
  List<Tag> tags = []; //list of tags

  Item({this.title, this.desc});

  get type {
    return this._type;
  }

  set type(String t) {
    if (Item.TYPES.indexOf(t.toUpperCase()) != -1) {
      this._type = t;
    } else {
      throw Exception(
          "the item type must be one of the following types ${Item.TYPES.toString()}");
    }
  }
}
