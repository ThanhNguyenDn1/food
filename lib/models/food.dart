import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'category.dart';

class Food {
  int money;
  int id;
  String name;
  String urlImage;//anh mon an
  Duration duration;//thoi gian nau
  Complexity complexity;// do kho thuc hien
  List<String> ingredients = List<String>();//thanh phan mon an
  int categoryId;

  Food(
      {@required this.money,
        @required this.name,
      @required this.urlImage,
      @required this.duration,
      this.complexity,
      this.ingredients,
      this.categoryId}){
    this.id=Random().nextInt(1000);
  }
}

enum Complexity { Simple, Medium, Hard }
