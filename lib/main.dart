import 'package:flutter/material.dart';
import 'package:helloworld/ShoppingList.dart';
import 'package:helloworld/ShoppingListItem.dart';

void main() => runApp(new MaterialApp(
      title: 'MyApp',
      home: new ShoppingList(
        products: <Product>[
          new Product(name: 'Eggs'),
          new Product(name: 'Flour'),
          new Product(name: 'Chocolate chips'),
        ],
      ),
    ));
