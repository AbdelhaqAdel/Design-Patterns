import 'builder.dart';
import 'car_product.dart';
import 'vichel_product.dart';

void main(){
    IBuilder car1 =new carProduct();
  car1.createBody();
  car1.createWheals();
  car1.getProduct();

  IBuilder vich =new VichelProduct();
   vich.createBody();
  vich.createWheals();
  vich.getProduct();
}