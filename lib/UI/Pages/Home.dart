import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

const button_size = 20.0;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _homeListItems = List<HomeListItem>.generate(
      8,
      (i) => HomeListItem(),
    );
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.account_circle, size: 40.0),
        title: Text('ホーム'),
        actions: <Widget>[Icon(Icons.edit, color: Colors.lightBlueAccent)],
      ),
      body: ListView.builder(
          itemCount: _homeListItems.length,
          itemBuilder: (context, index) {
            return _homeListItems[index];
          }),
    );
  }
}

class HomeListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
