import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Pages/Home.dart';

class App extends StatefulWidget {
  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  List<Widget> _pages = [
    Home(),
    // Home以外のページは後ほど作成
    Container(),
    Container(),
    Container()
  ];

  final iconSize = 32.0;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: iconSize),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: iconSize),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none, size: iconSize),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline, size: iconSize),
            title: Text(''),
          )
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context){
            return CupertinoPageScaffold(
              child: _pages[index],
            );
          },
        );
      },
    );
  }
}
