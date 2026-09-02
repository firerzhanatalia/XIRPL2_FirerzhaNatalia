import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 146, 114, 201),
          leading: Icon(Icons.tsunami ),
          title: Text('Flutter Widget'),
        ),
      ),
    );
  }
}
