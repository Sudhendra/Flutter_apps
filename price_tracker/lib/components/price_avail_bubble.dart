import 'package:flutter/material.dart';

class PriceAvailBubble extends StatelessWidget {
  final double top, bottom, left, right, textPadding;
  final Color boxColor, textColor;
  final String text;

  PriceAvailBubble(
      {this.top,
      this.bottom,
      this.left,
      this.right,
      this.textPadding,
      @required this.boxColor,
      @required this.textColor,
      @required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          alignment: Alignment.center,
          width: 130,
          height: 40,
          //padding: EdgeInsets.only(left: 18.0, top: 10.0),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 100.0,
                spreadRadius: 1.0,
              ),
            ],
              borderRadius: BorderRadius.circular(30.0), color: boxColor),
          child: Padding(
            padding: EdgeInsets.only(left: textPadding),
                      child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
