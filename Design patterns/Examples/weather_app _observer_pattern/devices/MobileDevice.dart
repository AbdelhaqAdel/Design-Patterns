
import 'app.dart';

class MobileApp implements App{
  
  String? _mobileType;
  MobileApp(type){
    _mobileType=type;
  }

  String getMobileType(){
    return _mobileType!;
  }

  @override 
  void notifyApp(String message){
    print('new weather updating for $_mobileType application that the $message');
  }
}