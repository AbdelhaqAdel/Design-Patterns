
import '../base_handler.dart';
import 'jop_applicatoin.dart';

class HRHandler extends BaseHandler {

  void toNext(JobApplication request) { 
    if (nextHandler != null) {
      nextHandler?.handleRequest(request);
    } else {
      request.comments.add('End by HR handler');
    }
  }

  @override
  void handleRequest(JobApplication request) {
    // Handling 1
    /*
    // request.comments.add('HR comment');
    // if (nextHandler != null) {
    //   nextHandler!.handleRequest(request);
    // } else {
    //   request.comments.add('End by HR handler');
    // }
    */

    // Handling 2
    
    // if (request.jobCode == '456') {
    //   request.comments.add('HR comment');
    // } else {
    //   if (nextHandler != null) {
    //     nextHandler?.handleRequest(request);
    //   } else {
    //     request.comments.add('End by HR handler');
    //   }
    // }
    

    if (request.jobCode == '456') {
      request.comments.add('HR comment');
      toNext(request);
      print('sent to next handler');
    } else {
      toNext(request);
    }
  }
}
