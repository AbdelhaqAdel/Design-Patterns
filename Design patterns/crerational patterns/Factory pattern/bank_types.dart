import 'bank.dart';

class Bank_A implements IBank{
  @override
  void whithDrow() {
   print("Bank A");
  }
}
class Bank_b implements IBank{
  @override
  void whithDrow() {
   print("Bank B");
  }
}