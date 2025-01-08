
import 'product.dart';

abstract class IBuilder{
  Product product=new Product();
  void createBody(String body){}
  void createWheals(String wheals){}
  void getProduct(){}
  
}