import 'package:flutter/material.dart';
import 'package:helloworld/gesture/DataTransApp.dart';

void main() => runApp(new MaterialApp(
      title: 'Passing Data',
      home: new TodoScreen(
        todos: new List.generate(
          20,
          (i) => new Todo(
              'Todo $i', 'A description of what needs to be done for Todo $i'),
        ),
      ),
    ));
