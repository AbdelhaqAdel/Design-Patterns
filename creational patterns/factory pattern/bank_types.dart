import 'bank.dart';

class Bank_A implements IBank{
  @override
  void withDraw() {
   print("Bank A");
  }
}
class Bank_b implements IBank{
  @override
  void withDraw() {
   print("Bank B");
  }
}