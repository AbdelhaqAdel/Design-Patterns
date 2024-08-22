import 'counter.dart';

void main(){
    var c1=Counter.getInstance();
    var c2=Counter.getInstance();
  c1?.addOne();
  c1?.addOne();
    c1?.addOne();
  c1?.addOne();

 // c1.addOne();
 // c1.addOne();
  c1?.printCount();
 // c2?.printCount();
//its not needed
}