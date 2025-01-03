class Product{

  String? _productName;

  Product(name){
    _productName=name;
  }

  String getProductName(){
    return _productName!;
  } 
}