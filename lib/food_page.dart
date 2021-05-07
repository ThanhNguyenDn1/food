import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'data/fake_data.dart';
import 'package:foodapp/models/food.dart';
import 'models/category.dart';

class FoodsPage extends StatelessWidget {
  static const String routeName = '/FoodsPage';
  Category category;
  FoodsPage({this.category});

  @override
  Widget build(BuildContext context) {
    Map<String, Category> arguments = ModalRoute.of(context).settings.arguments;
    this.category = arguments['category'];
    List<Food> foods = FAKE_FOODS.where((f) {
      return f.categoryId == this.category.id;
    }).toList();
    // TODO: implement build
    return MaterialApp(
      home: Center(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 70,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            backgroundColor: Colors.deepOrange,
            actions: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    size: 35,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(context);
                  }),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "${this.category.content}",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Padding(padding: EdgeInsets.only(right: 50)),
                  ],
                ),
              ),
            ],
          ),
          body: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                bottom: 25,
                right: 0,
                left: 0,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepOrange, width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  child: ListView.builder(
                      itemCount: foods.length,
                      itemBuilder: (context, index) {
                        Food food = foods[index];
                        return Container(
                          padding: EdgeInsets.only(top: 18),
                          child: Card(
                            color: Colors.amber,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            elevation: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text(
                                  "${this.category.content}",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Padding(padding: EdgeInsets.only(top: 5)),
                                Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                          padding: EdgeInsets.only(left: 10)),
                                      Container(
                                          height: 150,
                                          width: 150,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 2, vertical: 2),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: ClipRRect(
                                            clipBehavior: Clip.hardEdge,
                                            child: Center(
                                              child: FadeInImage.assetNetwork(
                                                  placeholder:
                                                      "assets/images/loading.gif",
                                                  image: food.urlImage),
                                            ),
                                          )),
                                      Padding(
                                          padding: EdgeInsets.only(left: 30)),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "${food.name}",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25),
                                            ),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 5)),
                                            Row(
                                              children: <Widget>[
                                                Icon(Icons.money),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 3)),
                                                Text(" ${food.money} VND",
                                                    style: TextStyle(
                                                        fontSize: 15)),
                                              ],
                                            ),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 5)),
                                            Row(
                                              children: <Widget>[
                                                Icon(Icons.timer),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 6)),
                                                Text(
                                                  "${food.duration.inMinutes} minutes",
                                                  style:
                                                      TextStyle(fontSize: 15),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 5)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: 160,
                  left: 160,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.deepOrange, width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(180))),
                    child: FlatButton(
                      splashColor: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(180))),
                      height: 50,
                      color: Colors.white,
                      child: Icon(
                        Icons.add_shopping_cart,
                        size: 35,
                        color: Colors.deepOrange,
                      ),
                      onPressed: () {},
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
