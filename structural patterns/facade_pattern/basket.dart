import 'basket_item.dart';

class Basket{
  List<BasketItem> _items=[];
  void addItem(BasketItem item){
    _items.add(item);
  }
  void removeItem(String itemId){
  _items.removeWhere((element) {
    if(element.quantity!>0)element.quantity=(element.quantity!-1);
    return itemId==element.itemId;});
  }
  List<BasketItem> getItems()=>_items;
}