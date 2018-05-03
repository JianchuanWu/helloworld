import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String body;

  Detail(this.body);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('列表详情'),
        ),
        body: new Container(
          child: new Text(body,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
        ));
  }
}
