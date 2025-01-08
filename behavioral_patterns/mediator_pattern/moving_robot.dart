import 'mediator.dart';

class MovingRobot {
  Mediator? mediator;
  MovingRobot({required this.mediator}){
    this.mediator=mediator;
  }
  void transport(){
    print("Transporting coffee");
   mediator?.openWindow();
    
  }
}