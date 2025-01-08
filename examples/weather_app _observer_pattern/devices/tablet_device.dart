import 'app.dart';

class TabletApp implements App{
  
  String? _tabletType;
  TabletApp(type){
    _tabletType=type;
  }

  String getMobileType(){
    return _tabletType!;
  }

  @override 
  void notifyApp(String message){
    print('new weather updating for $_tabletType application that the $message');
  }
}