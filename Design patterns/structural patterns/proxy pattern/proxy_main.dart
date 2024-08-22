import 'proxy.dart';

void main(){
//  1- proxy pattern:
SmsServiceProxy proxy = new SmsServiceProxy();
print(proxy.sendSms('123', '01004502916','hello'));
print(proxy.sendSms('123', '01004502916','hello'));
print(proxy.sendSms('123', '01004502916','hello'));
print(proxy.sendSms('123', '01004502916','hello')); // counter will be 4 then message not sent
}