import 'job_application.dart';

abstract class BaseHandler {
   BaseHandler? nextHandler;

  void setNext(BaseHandler handler) {
    nextHandler = handler;
  }

   void handleRequest(JobApplication request);
}
