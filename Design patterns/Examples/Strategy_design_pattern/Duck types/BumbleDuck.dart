import '../Duck.dart';
import '../Flying behavior/CanNotFly.dart';
import '../Flying behavior/FlyBehavior.dart';
import '../Quack Behavior/MuteQuack.dart';
import '../Quack Behavior/QuackBehavior.dart';

class BumbleDuck extends Duck{
  FlyBehavior? canNotFly=new CanNotFlyy();
  QuackBehavior? muteQuack=new MuteQuack();
  BumbleDuck(){
    flyBehavior=this.canNotFly;
    quackBehavior=this.muteQuack;
  }
  
  @override void displayDuck() {
    print('i am a bumble Duck');
  }
}