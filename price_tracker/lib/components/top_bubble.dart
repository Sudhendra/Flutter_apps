import 'package:flutter/material.dart';
import 'package:price_tracker/constants.dart';

class TopBubble extends StatelessWidget {
  const TopBubble({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
          bottomRight: Radius.circular(70),
        ),
        color: kActiveColor,
      ),
    );
  }
}

