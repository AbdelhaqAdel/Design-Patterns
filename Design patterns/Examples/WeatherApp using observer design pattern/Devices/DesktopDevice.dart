import 'Applications.dart';

class DesktopApp implements App{
    
  String? _deskTypeType;
  DesktopApp(type){
    _deskTypeType=type;
  }

  

  @override 
  void notifyApp(String message){
    print('new weather updating for $_deskTypeType application that the $message');
  }
}