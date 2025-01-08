import 'Subscriber.dart';

class ShibingCompany implements Subscriber{
    String? _name;


  ShibingCompany(String name){
    _name = name;
  }
  
  String getshipingCompanyName(){
    return _name!;
  }

  @override
  void notify(String message) {
   print('notify shiping company $message');
      }

}