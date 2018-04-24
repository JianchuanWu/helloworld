import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: 'Returning Data',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Image Test'),
        ),
        body: new ListView(
          children: <Widget>[
            new Image.asset(
              'images/lake.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    ));
