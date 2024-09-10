import 'Duck types/BumbleDuck.dart';
import 'Duck types/MallarDuck.dart';
import 'Duck.dart';
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