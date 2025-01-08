import 'mediator.dart';

class Alarm {
  Mediator? myMediator;
  Alarm({required this.myMediator}){
    this.myMediator=myMediator;
  }
  void alarmOn() {
    print('Alarm on');
  }

  void alarmOff() {
    print('Alarm off');
  }


  void snooze() {
    print('Alarm Snoozed');
    myMediator?.createCoffee();
   }
}