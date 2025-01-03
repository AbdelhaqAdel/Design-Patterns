
import 'mediator.dart';

class SmartWindow { 
  Mediator? myMediator;
  SmartWindow({required this.myMediator});
  void openWindow(){
    print('open window');
    myMediator?.closeAlarm();
  }

}