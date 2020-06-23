import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:price_tracker/constants.dart';
import 'package:price_tracker/screens/add_item.dart';

class AddProductButton extends StatelessWidget {
  final Function onTap;

  AddProductButton({@required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25, right: 20),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          height: 80,
          width: 80,
          child: FittedBox(
            child: FloatingActionButton(
              heroTag: "btn2",
              elevation: 100.0,
              child: Icon(
                FontAwesomeIcons.plus,
                color: Colors.black,
              ),
              splashColor: kCardColor,
              backgroundColor: Color(0xFFFFC25C),
              onPressed: onTap,
            ),
          ),
        ),
      ),
    );
  }
}
