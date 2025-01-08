//this class to save current state & convert from state to another 

import 'mobile_alert.dart';
import 'ringing_state.dart';

class MobileContext{
  MobileAlertState? _currentState;
  MobileContext(){
   _currentState=new Ringing();        //default state 
  }
   void setState(MobileAlertState state){    //to change current state
     _currentState =state;
   }
   void alert(){        //to implement the alert for current state 
    _currentState?.alert();
   }
}

