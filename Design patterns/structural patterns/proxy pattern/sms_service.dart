abstract class SmsService
{
  String SendSms(String custId,String mobile,String sms);
}

class ConcreateSmsService extends SmsService{
  @override
  String SendSms(String custId, String mobile, String sms) {
       return 'customerId${custId}, sms sent to ${mobile}';
  }
}