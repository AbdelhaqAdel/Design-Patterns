import 'duck_types/BumbleDuck.dart';
import 'duck_types/MallarDuck.dart';
import 'duck.dart';
//-------------strategy design pattern -----------------

void main(){
 
Duck bumbleDuck =new BumbleDuck();

bumbleDuck.getDuckFlyingType();
bumbleDuck.getDuckQuackingType();
bumbleDuck.displayDuck();
bumbleDuck.swmimDuck();

// After adding new duck (Maller) type with different features ......

Duck mallerDuck =new MallerDuck();

mallerDuck.getDuckFlyingType();
mallerDuck.getDuckQuackingType();
mallerDuck.displayDuck();
mallerDuck.swmimDuck();
 
}