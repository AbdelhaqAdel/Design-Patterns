
import 'builder.dart';

class VichelProduct extends IBuilder{

  @override
  VichelProduct(){
   }
 void createBody(String body) {
    product.add(body);
    super.createBody(body);
  }
  void createWheals(String wheals) {
    product.add(wheals);
    super.createBody(wheals);
  }
 void getProduct(){
    product.show();
  }
}
