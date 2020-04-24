import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[100],
          appBar: AppBar(
            title: Text('I am Poor'),
            backgroundColor: Colors.indigo,
          ),
          body: 
          Center(
            child: Image(
              image: AssetImage('images/husky.png')
            ),
          ),
        ),
      ),
    );
