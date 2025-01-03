import 'basket.dart';
import 'inventory.dart';
import 'inventory_order.dart';
import 'invoice.dart';
import 'payment.dart';

//doing all process of creating order

class Facade{
  bool createOrder(Basket basket,String custInfo){
  Inventory inv=new Inventory();
  bool isAvailable=true;

  basket.getItems().forEach((element) {
    if(!inv.checkItemQuantity(element.itemId, element.quantity!)){
       isAvailable=false;
  }
  });
  if(isAvailable){
   InventoryOrder invOrder=new InventoryOrder();
  invOrder.createOrder(basket);
  
  Invoice invoice=new Invoice();
  invoice.createInvoice(basket);
  
  PaymentProcessor payment=new PaymentProcessor();
  payment.payment(invoice.netTotal,"bankInfo");
  return true;
  }return false;



  // basket.addItem(basketItem2);
  //  List<BasketItem> allItems=basket.getItems();
  //   print(allItems[1].itemPrice);

  //   basket.removeItem('2');
  //    print(allItems[0].itemPrice);
  //   basket.addItem(basketItem3);
  //  print(allItems[1].itemPrice);

  }
}