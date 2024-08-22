class Counter{

  int count=0;
 
  Counter._ (){}
  
  //static counter instance=new counter._();  //كدا هخلى اول مالبرنامج يشتغل هعمل اوبجيكت بدون منا محتاجه
  static Counter? instance; //عشان مخليش اوبجيكت يتعمل علطول
   
   static Counter? getInstance(){  //to get one instance from the class 
    if (instance==null){instance=new Counter._();}  //lazy intialization
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
