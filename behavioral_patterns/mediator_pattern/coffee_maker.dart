import 'mediator.dart';

class CoffeeMaker {

  Mediator mediator=Mediator();
  CoffeeMaker({required this.mediator}){
    this.mediator=mediator;
  }
    void makeCoffee(){
      print('Making coffee....');
      print("coffee is ready");
      mediator.transport();
    }

}