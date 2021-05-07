import 'package:flutter/material.dart';
import 'package:foodapp/models/category.dart';
import 'food_page.dart';

class CategoryItem extends StatelessWidget {
  Category category;
  CategoryItem({this.category});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, FoodsPage.routeName,arguments: {'category': category});
      },
      splashColor: Colors.blue,
      child: Container(
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.amber.withOpacity(0.6),
              Colors.amber,
            ]),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(13))),
          elevation: 10,
          child: Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 10)),
              Container(
                child: Text(
                  "${category.id}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.deepOrangeAccent),
                ),
              ),
              Expanded(
                // decoration: BoxDecoration(border: Border.all(color: Colors.deepOrangeAccent)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "${category.content}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:Colors.deepOrangeAccent),
                    ),
                    Container(
                        //picture food
                        )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
