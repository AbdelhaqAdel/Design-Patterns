import 'SensorInterface.dart';

class TempSensor implements SensorInterface{
  String? _tempDegree;
  TempSensor(String tempDegree){
    _tempDegree=tempDegree;
  }
  @override
  String getSensorData() {
    return _tempDegree!;
  }
  
}