import 'package:flutter/material.dart';
import 'package:helloworld/gesture/DismissibleApp.dart';

void main() => runApp(new DismissibleApp(
      items: new List<String>.generate(20, (i) => 'Item ${i + 1}'),
    ));
