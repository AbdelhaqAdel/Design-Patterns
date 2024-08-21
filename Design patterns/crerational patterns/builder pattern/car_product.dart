
import 'builder.dart';

class carProduct extends IBuilder{

  @override
  carProduct(){
   }
  void createBody() {
    product.add('car body');
    super.createBody();
  }
  void createWheals() {
    product.add('car wheal');
    super.createBody();
  }
  void getProduct(){
    product.show();
  }
  
}
