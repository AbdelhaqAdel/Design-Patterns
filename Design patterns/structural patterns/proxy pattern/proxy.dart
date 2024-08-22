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

     // count=counter.getInstance();
      count?.addOne();
      sendCount.
      addAll({custId:count!.GetCount()});
                  print('valls f${sendCount.values}');

    }else{
                  print('valls ff${sendCount.values}');
   // print(sendCount.keys);
      count?.addOne();
                  print('valls ff${sendCount.values}');

      if(count!.GetCount == 3){
                    print('valls fff${sendCount.values}');
        return 'not sent';

      }else{
        count?.addOne();
                    print('valls ffff${sendCount.values}');

        print(sendCount.values);
       sendCount.addAll({custId:count!.GetCount()});

      }
    }
    return smsService.SendSms(custId, mobile, sms);
  }
}

