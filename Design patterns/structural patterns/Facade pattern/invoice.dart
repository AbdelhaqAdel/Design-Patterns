import 'basket.dart';

class Invoice{
  double discount =0;
  double amount=0;
  double netTotal=0;
  Invoice createInvoice(Basket basket){
   Invoice invoice = new Invoice();
   var item=basket.getItems();
   item.forEach((element) {
    amount+= element.itemPrice*element.quantity!;
   });
   if(item.length>5)invoice.discount=20;
   invoice.netTotal=amount-discount;
   return invoice;
  }
}