
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Display Snackbar',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Snackber Demo"),
        ),
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: RaisedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text("Yay, A SnackBar!"),
            action: SnackBarAction(
              label: "Undo",
              onPressed: () {

              },
            ),
          );
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text("show SnackBar"),
      ),
    );
  }
}
