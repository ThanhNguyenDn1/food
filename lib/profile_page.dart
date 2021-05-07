import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/home_page.dart';

class ProfilePage extends StatelessWidget {
  static const String routeName = '/ProfilePage';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Food App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
                // IconButton(
                //     icon: Icon(
                //       Icons.arrow_back_rounded,
                //       size: 35,
                //     ),
                //     onPressed: () {
                //       Navigator.of(context).pop(context);
                //     }),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Food App",
                        style: TextStyle(
                            fontSize: 45, fontWeight: FontWeight.bold),
                      ),
                      //Padding(padding: EdgeInsets.only(right: 50)),
                    ],
                  ),
                ),
              ],
            ),
            body: Center(
                child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.deepOrange, width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      padding: EdgeInsets.only(top: 35, right: 5, left: 5),
                      child: Column(
                        children: <Widget>[

                        ],
                      )
                  ),
                ),
              ],
            ))),
      ),
    );
  }
}
