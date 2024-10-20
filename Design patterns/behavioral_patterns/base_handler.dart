import 'chain_of_responsibility/jop_applicatoin.dart';

abstract class BaseHandler {
   BaseHandler? nextHandler;

  void setNext(BaseHandler handler) {
    nextHandler = handler;
  }

   void handleRequest(JobApplication request);
}
