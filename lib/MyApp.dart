import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/home_page.dart';
import 'package:foodapp/profile_page.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  int _index = 0;
  Widget getBody(int a) {
    if (_index == 0) {
      return HomePage();
    } else
      return ProfilePage();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: getBody(_index),
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          fixedColor: Colors.deepOrange,
          type: BottomNavigationBarType.fixed,
          currentIndex: _index,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, size: 40),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined, size: 40,),
                title: Text("Profile")),
          ],
          onTap: (index) {
            this.setState(() {
              _index = index;
            });
          },
        ),
      )
    );
  }
}
