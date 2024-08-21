
import 'builder.dart';

class carProduct extends IBuilder{

  @override
  carProduct(){
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
