import 'package:flutter/material.dart';
import 'package:price_tracker/screens/add_item.dart';
import 'package:price_tracker/screens/loading_screen.dart';
import 'package:price_tracker/screens/product_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xFFFFC25C),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: ProductScreen(),
    );
  }
}