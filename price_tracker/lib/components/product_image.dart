import 'package:flutter/material.dart';
import 'package:price_tracker/constants.dart';

class ProductImage extends StatelessWidget {

  final String imageURL;

  ProductImage({@required this.imageURL});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 70.0),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: 310,
          height: 400,
          color: kIncativeColor,
          child: Image.network(
            imageURL,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
