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
  var Content = Column(
    children: <Widget>[
      Expanded(
      child: Container(
        child: Row(
          children: <Widget>[
            Expanded(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Text('TestUser'),
                          Text('@test_user・2019-07-07')
                        ],
                      ),
                    ),
                   Row(children: <Widget>[
                     Text('レイアウトの練習でええす。')
                   ],)

                  ],
                )
            ),
            Icon(Icons.expand_more, size: 24.0,)
          ],
        ),
      ),
      ),
      Container(
        height: 25.0,
        child: Row(
          children: <Widget>[
            Expanded(
               child: FittedBox(
                 fit: BoxFit.contain,
                 child: Icon(Icons.comment),
               ),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Icon(Icons.favorite),
              ),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Icon(Icons.file_download),
              ),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Icon(Icons.share),
              ),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Icon(Icons.group_work),
              ),
            ),
          ],
        ),
      )
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.grey
        ),
      ),
      height:100.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Icon(Icons.account_circle,size: 60.0),
            Expanded(
              child: Content,
            )
          ],
        ),
      ),
    );
  }
}
