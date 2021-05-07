import 'package:flutter/material.dart';

class Category {
  final int id;
  final String content;
  final Color color;
  const Category({@required this.content, @required this.color, this.id});
  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}
