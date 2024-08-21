
import 'product.dart';

abstract class IBuilder{
  Product product=new Product();
  void createBody(){}
  void createWheals(){}
  void getProduct(){}
  
}