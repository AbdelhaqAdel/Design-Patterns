import 'basket.dart';
import 'basket_item.dart';
import 'purchase_facsde.dart';

void main(){
  BasketItem basketItem1=new BasketItem(itemId: '1',itemPrice: 10.5,quantity: 1);
  BasketItem basketItem2=new BasketItem(itemId: '2',itemPrice: 25,quantity: 2);
  BasketItem basketItem3=new BasketItem(itemId: '3',itemPrice: 41.5,quantity: 3);

  Basket basket=new Basket();
  basket.addItem(basketItem1);
 basket.addItem(basketItem2);
  basket.addItem(basketItem3);

  Facade burchase=new Facade();
  burchase.createOrder(basket,'custInfo');  


  //  List<BasketItem> allItems=basket.getItems();
  //   print(allItems[1].itemPrice);

  //   basket.removeItem('2');
  //    print(allItems[0].itemPrice);
  //   basket.addItem(basketItem3);
  //  print(allItems[1].itemPrice);


}