import 'basket.dart';

class Inventory {
  Basket basket=new Basket();
 bool checkItemQuantity(String itemId,double quantity){
    return quantity<100;
}
}