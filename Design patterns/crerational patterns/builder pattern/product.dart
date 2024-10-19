class Product{
  List<String> parts=[];
  void add (String part){
    parts.add(part);
  }
  void show(){
    parts.forEach((element) {
      print(element.toString());
    });
  }
}
