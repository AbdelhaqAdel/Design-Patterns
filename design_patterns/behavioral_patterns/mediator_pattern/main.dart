import 'alarm.dart';
import 'coffee_maker.dart';
import 'mediator.dart';
import 'moving_robot.dart';
import 'smart_window.dart';

void main() {
  final mediator = Mediator();

  final smartWindow = SmartWindow(myMediator: mediator);
  final movingRobot = MovingRobot(mediator: mediator);
  final coffeeMaker = CoffeeMaker(mediator: mediator);
  final alarm = Alarm(myMediator: mediator);

  mediator.setObjects(
    alarm: alarm,
    smartWindow: smartWindow,
    movingRobot: movingRobot,
    coffeeMaker: coffeeMaker,
  );

  mediator.snoozeAlarm();
}
