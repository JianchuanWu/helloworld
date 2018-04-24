import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Returning Data Demo'),
      ),
      body: new Center(
        child: new SelectionButton(),
      ),
    );
  }
}

class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: new Text('Pick an option, any option!'),
    );
  }

  _navigateAndDisplaySelection(BuildContext context) async {
    // 在异步方法里使用await()来暂停代码执行，直到Future 执行完成
    final result = await Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new SelectionScreen()),
    );
    Scaffold
        .of(context)
        .showSnackBar(new SnackBar(content: new Text('$result')));
  }
}

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Pick a option'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new RaisedButton(
                onPressed: () {
                  Navigator.pop(context, 'Yep!');
                },
                child: new Text('Yep!'),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new RaisedButton(
                onPressed: () {
                  Navigator.pop(context, 'Nope!');
                },
                child: new Text('Nope'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
