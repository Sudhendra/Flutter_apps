import 'package:flutter/material.dart';

class DirectionButton extends StatelessWidget {

  final Color colour;
  final Function onPress;
  final IconData icon;

  DirectionButton({@required this.colour, @required this.onPress, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        child: Icon(
          icon,
        ),
        decoration: new BoxDecoration(
            borderRadius: new BorderRadius.all(
                new Radius.circular(20.0)),
            color: colour),
        padding:
            new EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );
  }
}
