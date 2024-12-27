import 'base_handler.dart';
import 'job_application.dart';

class TechHandler extends BaseHandler {
  void toNext(JobApplication request) {
    if (nextHandler != null) {
      nextHandler?.handleRequest(request);
    } else {
      request.comments.add('End by tech handler');
    }
  }

  @override
  void handleRequest(JobApplication request) {
    // Handling 1
    /*
    // request.comments.add('Tech comment');
    // if (nextHandler != null) {
    //   nextHandler!.handleRequest(request);
    // } else {
    //   request.comments.add('End by tech handler');
    // }
    */

    // Handling 2
    // if (request.jobCode == '123') {
    //   request.comments.add('Tech comment');
    // } else {
    //   if (nextHandler != null) {
    //     print('sent to next handler');
    //     nextHandler?.handleRequest(request);
    //   } else {
    //     request.comments.add('End by tech handler');
    //   }
    // }

    if (request.jobCode == '123') {
      request.comments.add('Tech comment');
      toNext(request);
      print('sent to next handler');
    } else {
      toNext(request);
    }
  }
}
