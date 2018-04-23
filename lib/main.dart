import 'package:flutter/material.dart';
import 'package:helloworld/MyLongListApp.dart';

void main() => runApp(new MyLongListApp(
      items: new List<String>.generate(10000, (i) => "Item $i"),
    ));
