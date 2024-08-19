import 'EvenetTypeEnum.dart';
import 'Market place component/JobPosition.dart';
import 'Market place component/Offer.dart';
import 'Market place component/OnlineMarketPlace.dart';
import 'Market place component/Product.dart';
import 'Subscribers/Customer.dart';
import 'Subscribers/ShibingCompany.dart';
import 'Subscribers/Subscriber.dart';

void main(){
  
  Customer ahmed =Customer('Ahmed');
  Customer omar =Customer('omar');
  Customer ali =Customer('ali');
  
  Customer eman =Customer('eman');

  Product newProduct =Product('lab top');
  Offer newOffer =Offer('25% discount');
  JobPosition hr=JobPosition('Hr');


  OnlineMarketPlace onlineMarketPlace =OnlineMarketPlace();

  onlineMarketPlace.subscribe(EventType.NEWPRODUCT, ahmed);
  onlineMarketPlace.subscribe(EventType.NEWPRODUCT, omar);

  onlineMarketPlace.subscribe(EventType.NEWOFFERS, ali);
  
  onlineMarketPlace.subscribe(EventType.OPENPOSITION, eman);



  onlineMarketPlace.addProduct(newProduct);
  onlineMarketPlace.addOffer(newOffer);
  print('--------------un subscribing------------------------');
  onlineMarketPlace.unSubscribe(EventType.NEWPRODUCT, omar);
    onlineMarketPlace.addProduct(newProduct);

  //-------------------add new event type(jb position)---------------------
  onlineMarketPlace.addJobPositoin(hr);
//------------------add new  subscriber ------------

Subscriber airgentCompany=ShibingCompany('Airgent');
onlineMarketPlace.subscribe(EventType.NEWPRODUCT, airgentCompany);

onlineMarketPlace.addProduct(newProduct);
}