abstract class Payment{
  void paymentType();
}


class PaypalPayment implements Payment{
  @override
  void paymentType() {
      print('Paypal payment strategy');
  }
}


class VisaCardPayment implements Payment{
  @override
  void paymentType() {
      print('VisaCard Payment strategy');
  }
}


class OtherPayment implements Payment{
  @override
  void paymentType() {
      print('Other Payment strategy');
  }
}
