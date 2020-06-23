import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:price_tracker/components/add_product_button.dart';
import 'package:price_tracker/components/bottom_bubble.dart';
import 'package:price_tracker/components/direction_button.dart';
import 'package:price_tracker/components/price_avail_bubble.dart';
import 'package:price_tracker/components/product_field.dart';
import 'package:price_tracker/components/product_image.dart';
import 'package:price_tracker/components/shop_button.dart';
import 'package:price_tracker/components/top_bubble.dart';
import 'package:price_tracker/constants.dart';
import 'package:price_tracker/screens/add_item.dart';
import 'package:price_tracker/services/temp_data.dart';

enum Direction {
  left,
  right,
}

class AddItemArguments {
  Map<String, dynamic> newItemData;

  AddItemArguments(this.newItemData);

  Map getProductDetails() {
    return this.newItemData;
  }
}

class ProductScreen extends StatefulWidget {
  final BuildContext context;

  ProductScreen({this.context});

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  Map _productDetails;
  String _productName;
  String _productURL;

  Direction selectedDirection;
  Color buttonColor = kIncativeColor;
  int amount = 1000;

  var productInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          backgroundColor: Color(0xFFFFC25C),
          elevation: 0.0,
          title: Center(
            child: Text(
              'My Products',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(55.0),
      ),
      body: Stack(
        children: <Widget>[
          TopBubble(),
          BottomBubbles(),
          Container(
            alignment: Alignment.topCenter,
            child: Container(
              height: 600.0,
              width: 350.0,
              child: Card(
                color: kCardColor,
                elevation: 15.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                margin: EdgeInsets.all(15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(30.0, 30.0, 0.0, 0.0),
                        child: ProductField(
                          productName: _productName == null ? 'Empty' : _productName,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(30.0, 30.0, 0.0, 0.0),
                        child: DirectionButton(
                          onPress: () {
                            setState(() {
                              selectedDirection = Direction.left;
                            });
                          },
                          colour: selectedDirection == Direction.left
                              ? kActiveColor
                              : kIncativeColor,
                          icon: FontAwesomeIcons.angleLeft,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(10.0, 30.0, 20.0, 0.0),
                        child: DirectionButton(
                          onPress: () {
                            setState(() {
                              selectedDirection = Direction.right;
                            });
                          },
                          colour: selectedDirection == Direction.right
                              ? kActiveColor
                              : kIncativeColor,
                          icon: FontAwesomeIcons.angleRight,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ProductImage(
            imageURL:
                'https://images.unsplash.com/photo-1550258987-190a2d41a8ba?ixlib=rb-1.2.1&w=1000&q=80',
          ),
          Stack(
            children: <Widget>[
              PriceAvailBubble(
                top: 250.0,
                left: 180.0,
                right: 0.0,
                bottom: 0.0,
                boxColor: Colors.white,
                textColor: Colors.black,
                textPadding: 20.0,
                text: 'Available',
              ),
              PriceAvailBubble(
                  top: 250.0,
                  left: 80.0,
                  right: 0.0,
                  bottom: 0.0,
                  boxColor: kActiveColor,
                  textColor: Colors.white,
                  textPadding: 0.0,
                  text: '1 Pc: ${amount.toString()}'),
            ],
          ),
          ShopButton(),
          AddProductButton(
            onTap: () async {
              final AddItemArguments productInfo = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddItem(),
                ),
              );
              setState(() {
                _productDetails = productInfo.getProductDetails();
                _productName = _productDetails['productName'];
                _productURL = _productDetails['productURL'];
              });
              TempData(productInfo);
            },
          ),
        ],
      ),
    );
  }
}
