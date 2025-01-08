// Strategy Pattern: Adding new features or subtypes to a Duck
// To handle features that may change in the future, such as flying or quacking behaviors, 
// we should follow the Strategy Pattern. 
// Create an interface to define the behavior for each feature, and ensure any specific implementation 
// of the feature adheres to this interface.


import 'Flying behavior/FlyBehavior.dart';
import 'Quack Behavior/QuackBehavior.dart';

abstract class Duck{
  FlyBehavior? flyBehavior;
//Using polymorphism i can make _flyBehavior have any type of super class FlyBehavior in run time.......

  QuackBehavior? quackBehavior;

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