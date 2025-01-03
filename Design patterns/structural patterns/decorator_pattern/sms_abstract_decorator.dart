//this abstract class to add the new feature (send notification to user) by inherite from SmsService class
// to get send sms feature
import '../proxy_pattern/sms_sender/sms_service.dart';

abstract class SmsDecorator implements SmsService{
  SmsService? notificationDecorator;
  
  void setService(SmsService service){   // من هنا بقدر اختار الخدمه اللى هيقدمالى الديكوراتور 
    notificationDecorator=service;       // عشان لو حبيت اضيف خدمات تانبه مختلفه  
  }
  @override
  String sendSms(String custId, String mobile, String sms){
    if(notificationDecorator!=null){
      return notificationDecorator?.sendSms(custId, mobile, sms)?? '';
    }else{
      return 'error to send notification';
    }
  }
} 