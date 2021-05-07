import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/MyApp.dart';
import 'package:foodapp/categories_page.dart';
import 'package:foodapp/food_page.dart';
import 'package:foodapp/profile_page.dart';



void main() {
  runApp(MaterialApp(
    title: 'Food App',
    initialRoute: '/',
    routes: {
      '/FoodsPage': (context) => FoodsPage(),
      '/CategoriesPage': (context) => CategoriesPage(),
      '/ProfilePage': (context) => ProfilePage(),
    },
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: MyApp(),
  ));
}
