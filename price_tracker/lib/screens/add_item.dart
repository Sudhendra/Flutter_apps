import 'package:flutter/material.dart';
import 'package:nice_button/nice_button.dart';
import 'package:price_tracker/components/bottom_bubble.dart';
import 'package:price_tracker/components/top_bubble.dart';
import 'package:price_tracker/constants.dart';
import 'product_screen.dart';

class AddItem extends StatefulWidget {
  final BuildContext context;

  AddItem({this.context});

  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {

  
  var firstColor = Color(0xFFFFC25C);
  var secondColor = Color(0XFFFFDD3C);
  String productName;
  String productURL;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          backgroundColor: Color(0xFFFFC25C),
          elevation: 0.0,
          title: Center(
            child: Text(
              'Add Products',
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20.0),
                      child: TextField(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0
                        ),
                        decoration: kProductNameField,
                        onChanged: (value) {
                          productName = value;
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      child: TextField(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                        ),
                        decoration: kProductURLField,
                        onChanged: (value) {
                          productURL = value;
                        },
                      ),
                    ),
                    Container(
                      child: NiceButton(
                        radius: 40,
                        padding: EdgeInsets.all(15),
                        text: "Add product",
                        icon: Icons.add,
                        onPressed: () {
                          Navigator.pop(context,
                          AddItemArguments({
                            "productName": productName,
                            "productURL": productURL
                          }) 
                          );
                        },
                        background: Color(0xFFFFC25C),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
