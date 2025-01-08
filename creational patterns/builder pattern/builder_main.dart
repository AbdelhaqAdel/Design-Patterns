import 'builder.dart';
import 'car_product.dart';
import 'vichel_product.dart';

void main(){
    IBuilder car1 =new carProduct();
  car1.createBody('car body');
  car1.createWheals('car wheals');
  car1.getProduct();

  IBuilder vich =new VichelProduct();
   vich.createBody('vichel body');
  vich.createWheals('vidhel wheal');
  vich.getProduct();
}