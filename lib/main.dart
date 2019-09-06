
import 'package:flutter/material.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tab Bar Demo',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.directions_bus)),
              ],
            ),
            title: Text("Tab Bar Demo"),
          ),
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.directions_car),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bus),
            ],
          ),
        ),
      ),
    );
  }
}