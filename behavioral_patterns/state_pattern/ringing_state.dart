import 'mobile_alert.dart';

class Ringing implements MobileAlertState{
  @override
  void alert() {  //to add all configuration for this state 
    print("Mobile is ringing ....");
  }
}