class JobApplication {
  String applicantName;
  String jobTitle;
  String jobCode;
  List<String> comments = [];

  JobApplication({
    required this.applicantName,
    required this.jobTitle,
    required this.jobCode,
  });

  String showComments() {
    return comments.join('\n');
  }
}
