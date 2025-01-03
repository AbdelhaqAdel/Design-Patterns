import '../evenet_type_enum.dart';
import 'JobPosition.dart';
import 'offer.dart';
import 'product.dart';
import '../subscribers/Subscriber.dart';

class OnlineMarketPlace{
  Map<EventType,List<Subscriber>>? _Subscribers;
  List<Product>?_Products;
  List<Offer>?_offers;
  List<JobPosition>?_jobPosition;


  OnlineMarketPlace(){
    this._Subscribers={};
    initSubscribeEvent();
    this._Products=[];
    this._offers=[];
  }
  

  void initSubscribeEvent(){
        this._Subscribers={
      EventType.NEWPRODUCT:[],
      EventType.NEWOFFERS:[],
      EventType.OPENPOSITION:[],
        };
  }
  void subscribe(EventType eventType, Subscriber subscriber){
    _Subscribers![eventType]?.add(subscriber);
  }

  void unSubscribe(EventType eventType, Subscriber subscriber){
    _Subscribers![eventType]?.remove(subscriber);
  }

  void addProduct(Product product){
     _Products?.add(product);
     notifySubscriber(EventType.NEWPRODUCT,'new product added ${product.getProductName()}');
  }

  void addOffer(Offer offer){
    _offers?.add(offer);
      notifySubscriber(EventType.NEWOFFERS,'new offer added ${offer.getOfferName()}');
  }

  void addJobPositoin(JobPosition jobPosition){
     _jobPosition?.add(jobPosition);
     notifySubscriber(EventType.OPENPOSITION,'new job position on ${jobPosition.getName()}');
  }

  void notifySubscriber(EventType eventType,String message){
    _Subscribers![eventType]?.forEach((element) { 
      element.notify(message);
    });
  }

}