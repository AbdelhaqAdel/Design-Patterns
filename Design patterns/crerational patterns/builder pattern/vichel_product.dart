
import 'builder.dart';

class VichelProduct extends IBuilder{

  @override
  VichelProduct(){
   }
  void createBody() {
    product.add('vichel body');
    super.createBody();
  }
  void createWheals() {
    product.add('vidhel wheal');
    super.createBody();
  }
 void getProduct(){
    product.show();
  }
}
