import 'Subscriber.dart';

class Customer implements Subscriber{
  
  String? _name;
  Customer(name){
    this._name=name;
  }
  String getCustomerName(){
    return _name!;
  }

  @override 
  void notify(String message){
    print('new notifying $message for ${_name}');
  }
}