import '../proxy pattern/Sms sender/sms_service.dart';
import 'sms_decorator_impl.dart';

void main(){
   ConcreateSmsService smsService=new ConcreateSmsService();
   ConcreteNotificationDecorator notificationService=new ConcreteNotificationDecorator();
   notificationService.setService(smsService);
   print(notificationService.sendSms('11', '01004502916', 'hello from decorator service.'));

}