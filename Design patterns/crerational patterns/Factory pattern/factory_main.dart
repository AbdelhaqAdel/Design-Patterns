//factory pattern :
//make the user can use all type of banks with one object

import 'bank.dart';
import 'factory.dart';
void main(){
BankFactory bankFactory=new BankFactory();
IBank bank1=bankFactory.GetBank('12345');
IBank bank2=bankFactory.GetBank('11111');

//bank.GetBank('12345888');
//bank.GetBank('111112535');
bank1.withDraw();
bank2.withDraw();
}