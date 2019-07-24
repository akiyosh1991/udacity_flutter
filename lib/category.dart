import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({
    key,
    @required this.name,
    @required this.iconData,
    @required this.color,
  })  : assert(name != null),
        assert(iconData != null),
        assert(iconData != null),
        super(key: key);

  final String name;
  final IconData iconData;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child:InkWell(
        onTap: (){print('I was Tapped!');},
        splashColor: color,
        highlightColor: color,
        borderRadius: BorderRadius.circular(50.0),
        child: Container(
          height: 100.0,
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                  iconData,
                  size: 60.0,
                ),
              ),
              Center(
                  child: Text(
                name,
                style: TextStyle(fontSize: 24.0),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
