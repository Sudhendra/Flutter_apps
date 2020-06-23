import 'package:flutter/material.dart';

const kProductNameField = InputDecoration(
  filled: false,
  hintText: 'Pineapple',
  hintStyle: TextStyle(
    color: Colors.grey,
    fontSize: 20.0
    ),
  labelText: "Product Name",
  labelStyle: TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.bold
  ),
  
);
const kProductURLField = InputDecoration(
  filled: false,
  hintText: 'https://...',
  hintStyle: TextStyle(
    color: Colors.grey,
    fontSize: 20.0,
    ),
  labelText: "Product URL",
  labelStyle: TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.bold
  ),
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kActiveColor = Color(0xFFFFC25C);
const kIncativeColor = Colors.white;
const kCardColor = Color(0xFFF2FBFA);
