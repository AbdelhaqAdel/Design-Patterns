//-- if class P parent of class C then class C must have the same features of P 

abstract class Order {
  
  String? _orderName;
  int? _orderPrice;  


  Order(orderName,orderPrice){
    this._orderName=orderName;
    this._orderPrice=orderPrice;
  }

  void orderName(){
    print('order name is $_orderName');
  }

  // void getTotalCost(){
  //   print('Total Cost cost is ${_orderCost! / 50}');
  // }

}

abstract class TotalCost{
   getTotalCost();
}

class PickUpOrder extends Order implements TotalCost{
  PickUpOrder(super.orderName,super.orderPrice);
  
  //-------------the problem here ------------------------------------------
  //-- deliverycost method will be used in this class but this class don not want this method 
  //------------- solving----------------------------
  //create interface for delivery cost ---------------------------- 


  getTotalCost(){
        print('Total cost is ${_orderPrice}');
      }
}


class DeliveryOrder extends Order implements TotalCost{
    DeliveryOrder(super.orderName,super.orderPrice);


    @override 
      getTotalCost(){
        print('Total cost is ${_orderPrice! + 20}');
      }
}