import 'package:price_tracker/screens/product_screen.dart';

class TempData{

  Map <String, dynamic> newproductInfo;

  TempData(AddItemArguments productInfo);  

  Map <String, dynamic> getProductNameandURL(){
    return this.newproductInfo;
  }

}