import 'QuackBehavior.dart';

class MuteQuack implements QuackBehavior{
  @override 
  void quack(){
    print('i am not quack');
  }
}