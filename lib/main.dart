import 'package:flutter/material.dart';
import 'package:helloworld/simple_app/MyHomePage.dart';

void main() => runApp(new MaterialApp(
  title: 'simpleApp',
  theme: new ThemeData(
    primarySwatch: Colors.blue,
  ),
  home: new MyHomePage(),
));
