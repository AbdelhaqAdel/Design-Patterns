import 'alarm.dart';
import 'coffee_maker.dart';
import 'moving_robot.dart';
import 'smart_window.dart';

class Mediator {
  Alarm ?alarm;
  CoffeeMaker? coffeeMaker;
  SmartWindow? smartWindow;
  MovingRobot? movingRobot ;

  void setObjects({
    required Alarm alarm,
    required  SmartWindow smartWindow,
    required MovingRobot movingRobot,
    required CoffeeMaker coffeeMaker
   }){
    this.alarm=alarm;
    this.coffeeMaker=coffeeMaker;
    this.smartWindow=smartWindow;
    this.movingRobot=movingRobot;
   }
  void snoozeAlarm() {
   this.alarm?.snooze();
  }
  void createCoffee() {
   this.coffeeMaker?.makeCoffee();
  }

  void openWindow() {
    this.smartWindow?.openWindow();
  }

  void transport() {
    this.movingRobot?.transport();
  }

  void closeAlarm() {
    this.alarm?.alarmOff();
  }
  
}