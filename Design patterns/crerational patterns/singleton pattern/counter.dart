class Counter{

  int count=0;
 
  Counter._ (){}
  
  //static counter instance=new counter._();    // This way, I will create an object as soon as the program starts, even though I don't need it
  static Counter? instance;
   
   static Counter? getInstance(){  //to get one instance from the class 
    if (instance==null){instance=new Counter._();}  //lazy initialization
    return instance;
   }
  
  void addOne(){
    count ++;
  }
  void printCount(){
    print(count);
  }
  int GetCount(){
    return count;
  }
}
