import 'basket.dart';

class InventoryOrder{
  String createOrder(Basket basket){
    basket.getItems();
    return 'order created';
  }
}