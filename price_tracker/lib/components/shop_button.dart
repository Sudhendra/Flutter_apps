import 'package:flutter/material.dart';
import 'package:price_tracker/constants.dart';

class ShopButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 100.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton(
          heroTag: "btn1",
          elevation: 10.0,
          child: Icon(
            Icons.shopping_basket,
            color: Colors.black,
          ),
          splashColor: kCardColor,
          backgroundColor: kActiveColor,
          onPressed: () {},
        ),
      ),
    );
  }
}
