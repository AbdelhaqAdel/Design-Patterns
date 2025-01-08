import 'SensorInterface.dart';

class HumiditySensor implements SensorInterface{
  String? _humiName;
  HumiditySensor(String data){
    _humiName=data;
  }
  @override
  String getSensorData() {
    return _humiName!;
  }
  
}