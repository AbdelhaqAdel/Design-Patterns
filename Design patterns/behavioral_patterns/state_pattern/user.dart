import 'mobile_context.dart';
import 'silent_state.dart';

void main(){
  MobileContext context =new MobileContext();
  context.alert();  //default state is ringing

  context.setState(new Silent());
  context.alert();  //change to silent state 

}