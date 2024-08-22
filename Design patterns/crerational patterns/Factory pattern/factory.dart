import 'bank.dart';
import 'bank_types.dart';

abstract class IBankFactory{
  IBank GetBank(String bankCode);
}

class BankFactory implements IBankFactory{
  @override
  IBank GetBank(String bankCode) {
      switch(bankCode){
        case '12345':return new Bank_A();
        case '11111':return new Bank_b();
      }
      return Bank_A();
      }
}