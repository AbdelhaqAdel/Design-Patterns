//Stategy pattern to add new featuers to duck or add sub types of duck
//if any feature will be change in the future then we should make it like fly and squack duck : 
//create interface for thid featue behavior and any type of this feature will implement this interface 

import 'Flying behavior/FlyBehavior.dart';
import 'Quack Behavior/QuackBehavior.dart';

abstract class Duck{
  FlyBehavior? flyBehavior;
//Uaing polymorphism i can make _flyBehavior have any type of super class FlyBehavior in run time.......

  QuackBehavior? quackBehavior;

   Duck(){
  }

  void setFlyBehavior(FlyBehavior fb){
    flyBehavior=fb;
  }

  void setQuackBehavior(QuackBehavior qb){
    quackBehavior=qb;
  }
  void getDuckFlyingType(){
    flyBehavior?.Fly();
  }

  void getDuckQuackingType(){
    quackBehavior?.quack();
  }

  void displayDuck();

  void swmimDuck(){
    print('Duck is Swimming');
  }
}