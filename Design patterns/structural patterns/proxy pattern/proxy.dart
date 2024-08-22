import '../../crerational patterns/singleton pattern/counter.dart';
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
      print('valls f${sendCount.values}');
      addSmsCounterToSendCount(custId);
      print('valls f${count?.GetCount()}');


    }else{
      print('counter count ${count?.GetCount()}');
      // print('valls ff${sendCount.values}');
      if((count?.GetCount()??0) >= 3){
        //print('valls fff${sendCount.values}');
        return 'can not sent';
      }else{
        //print('valls ffff${sendCount.values}');
        addSmsCounterToSendCount(custId);
      }
    }
    return smsService.SendSms(custId, mobile, sms);
  }

  void addSmsCounterToSendCount(String custId){
      count?.addOne();
      sendCount.addAll({custId:count?.GetCount()??100});
  }
}

