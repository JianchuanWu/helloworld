import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  @override
  MyListState createState() => new MyListState();
}

class MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return new Card(
            child: new Container(
              padding: new EdgeInsets.all(10.0),
              child: new ListTile(
                subtitle: new Container(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text("标题",
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0)),
                        ],
                      )
                    ],
                  ),
                ),
                trailing: new Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey,
                ),
              ),
            ),
          );
        });
  }
}
