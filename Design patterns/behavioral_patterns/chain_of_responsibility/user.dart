import 'hr_handler.dart';
import 'jop_applicatoin.dart';
import 'tech_handler.dart';

void main() {
  // Create a JobApplication instance
  JobApplication jobApplication = JobApplication(
    applicantName: 'Mohammed',
    jobTitle: 'Great Job',
    jobCode: '456',
  );

  // Initialize the comment list (no need to do this since it's already initialized in the constructor)
  
  // Create instances of the handlers
  HRHandler hrHandler = HRHandler();

  TechHandler technicalEvalHandler = TechHandler();

  // Set up the chain of responsibility
  hrHandler.setNext(technicalEvalHandler);

  // Start the handling process
  hrHandler.handleRequest(jobApplication);

  // Print the comments
  print(jobApplication.showComments());
}
