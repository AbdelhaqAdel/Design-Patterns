import '../Flying behavior/FlyBehavior.dart';
import '../Flying behavior/FlyWithWings.dart';
import '../duck.dart';

import '../Quack Behavior/QuackBehavior.dart';
import '../Quack Behavior/Squeck.dart';

class MallerDuck extends Duck{
  FlyBehavior? flyWithWings=new FlyWithWings();
  QuackBehavior? squeak=new Squeak();
  MallerDuck(){
    flyBehavior=this.flyWithWings;
    quackBehavior=this.squeak;
  }
  
  @override void displayDuck() {
    print('i am a maller Duck');
  }
}