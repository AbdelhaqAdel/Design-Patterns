//class to implement decorator to use the feature sendSms feature and add the send notification feature
// because the decorator inherite from SmsServise abstract class

import 'sms_abstract_decorator.dart';

class ConcreteNotificationDecorator extends SmsDecorator{
  
  String sendNotificationMail(String custId,String message){
     return 'new sms from user$custId :($message)';
  } 

  @override
  String sendSms(String custId, String mobile, String sms) {
    StringBuffer buffer = StringBuffer();
    buffer.write(super.sendSms(custId, mobile, sms));
    buffer.writeln(); // Adds a newline
    buffer.write(sendNotificationMail(custId, sms));
     return buffer.toString();
  }


}