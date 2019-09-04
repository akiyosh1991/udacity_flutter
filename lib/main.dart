
import 'package:flutter/material.dart';

/// The function that is called when main.dart is run.
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Orientation Demo';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: OrientationList(
        title: appTitle
      ),
    );
  }
}

class OrientationList extends StatelessWidget {
  final String title;

  OrientationList({Key key, this.title}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(crossAxisCount: orientation == Orientation.portrait ? 4 : 3,
          children: List.generate(1000, (index){
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.caption,
              ),
            );
          }),
          );
        }
      )
    );
  }
}
