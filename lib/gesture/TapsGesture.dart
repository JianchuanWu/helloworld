import 'package:flutter/material.dart';

class TapsGesture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Gesture Demo';
    return new MaterialApp(
      title: title,
      home: new MyPageHome(
        title: title,
      ),
    );
  }
}

class MyPageHome extends StatelessWidget {
  final String title;

  MyPageHome({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        final snackBar = new SnackBar(content: new Text('Tap'));
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: new Container(
        padding: new EdgeInsets.all(12.0),
        decoration: new BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: new BorderRadius.circular(8.0),
        ),
        child: new Text('My Button'),
      ),
    );
  }
}
