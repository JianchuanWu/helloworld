import 'package:flutter/material.dart';
import 'package:helloworld/MixedList.dart';

void main() => runApp(new MixedList(
      items: new List<ListItem>.generate(
          1000,
          (i) => i % 6 == 0
              ? new HeadingItem("Heading $i")
              : new MessageItem('Sender $i,', 'Message body $i')),
    ));
