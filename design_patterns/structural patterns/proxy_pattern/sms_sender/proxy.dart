import '../../../crerational patterns/singleton pattern/counter.dart';
import 'sms_service.dart';

class SmsServiceProxy{
 SmsService smsService=new ConcreateSmsService();
  Map<String,int>sendCount={};
 var count=Counter.getInstance();
  String sendSms(String custId, String mobile, String sms){
    // if (smsService==null){
    //     smsService=
    // }  
    //first call
    if(count!.GetCount()==0){
      addSmsCounterToSendCount(custId);
    }else{
      print('Service counter${count?.GetCount()}');
      if((count?.GetCount()??0) >= 3){
        return 'can not sent';
      }else{
        addSmsCounterToSendCount(custId);
      }
    }
    return smsService.sendSms(custId, mobile, sms);
  }

  void addSmsCounterToSendCount(String custId){
      count?.addOne();
      sendCount.addAll({custId:count?.GetCount()??100});
  }
}

