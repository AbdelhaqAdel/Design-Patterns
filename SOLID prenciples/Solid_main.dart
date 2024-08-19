import 'LiskovSubstitution.dart';
import 'OpenClosedPrincle.dart';

void main(){
  //----------- Open closed prenciple--------------------
  Payment payment = PaypalPayment();
  getPaymentType(payment);

// -----------------------------------------------------
// -----------Liskove princple-------------------------

  PickUpOrder pickUpOrder= PickUpOrder('pizza',50);   // with out delivery cost
  pickUpOrder.orderName();
    pickUpOrder.getTotalCost();

    DeliveryOrder deliveryOrder= DeliveryOrder('soup',50);   // with out delivery cost
    deliveryOrder.orderName();
    deliveryOrder.getTotalCost();
}
  void getPaymentType(Payment payment){
    payment.paymentType();
  }
