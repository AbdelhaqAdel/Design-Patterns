import 'counter.dart';

void main(){
  var c1=Counter.getInstance();
  var c2=Counter.getInstance();
  c1?.addOne();
  c1?.addOne();
  c1?.addOne();
  c1?.addOne();
  c1?.printCount();  //out put will be 4
  c2?.addOne();
  c2?.printCount();  //out put will be 5 because c2 add one to the object c1  
}