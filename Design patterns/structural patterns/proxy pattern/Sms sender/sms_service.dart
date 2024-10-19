//Decorator pattern : to add new feature to class without change of it 
//ocp(Open Closed Principles).
//then i will add new feature (sendMailTOUser) using decorator pattern.

abstract class SmsService
{
  String sendSms(String custId,String mobile,String sms);
}

class ConcreateSmsService extends SmsService{
  @override
  String sendSms(String custId, String mobile, String sms) {
       return 'customerId${custId}, sms sent to ${mobile}';
  }
}

