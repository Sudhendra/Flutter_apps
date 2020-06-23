import 'package:flutter/material.dart';

class ProductField extends StatelessWidget {

  final String productName;

  ProductField({@required this.productName});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        productName,
        style: new TextStyle(
            //color: Colors.blue[500],
            fontWeight: FontWeight.w900,
            fontSize: 19),
      ),
      decoration: new BoxDecoration(
          borderRadius: new BorderRadius.all(
              new Radius.circular(20.0)),
          color: Colors.white),
      padding:
          new EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
    );
  }
}
