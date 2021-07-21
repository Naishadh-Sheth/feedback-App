import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          title: Text('My first app'),
          centerTitle: true,
          backgroundColor: Colors.lime,
        ),
        body: Center(
          child: Text('Hey !'),
        ),
      ),
    ));
