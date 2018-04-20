import 'package:flutter/material.dart';

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null),
        title: new Text('Example menu'),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search), tooltip: 'search', onPressed: null)
        ],
      ),
      body: new Center(
        child: new Text('Hello World.'),
      ),
      floatingActionButton: new FloatingActionButton(
          tooltip: 'add', child: new Icon(Icons.add), onPressed: null),
    );
  }
}
