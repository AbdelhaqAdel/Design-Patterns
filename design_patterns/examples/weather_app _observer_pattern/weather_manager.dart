import 'devices/app.dart';
import 'sensors/SensorTypes.dart';
import 'sensors/humiditySensor.dart';
import 'sensors/temperatureSensor.dart';

class WeatherManager{
   Map<SensorType,List<App>>?_apps;
   List<TempSensor>?_tempsToDay;
   List<HumiditySensor>?_humToDay;
  
   WeatherManager(){
    this._apps={};
    initSensorsTypes();
    this._tempsToDay=[];
    this._humToDay=[];
   }

   void subscribeAppToSensorTypr(SensorType sensorType,App app){
    _apps![sensorType]?.add(app);
   }

   void unSubscribeAppToSensorTypr(SensorType sensorType,App app){
    _apps![sensorType]?.remove(app);
   }


   void initSensorsTypes(){
    this._apps={
      SensorType.NewTempType:[],
      SensorType.NewHumidityType:[],
    };
   }

   void addTempForNow(TempSensor temp){
    _tempsToDay?.add(temp);
     addNotifyForApps(SensorType.NewTempType,'tempreture degree is ${temp.getSensorData()}');
   }
   
      void addHumiForNow(HumiditySensor humi){
    _humToDay?.add(humi);
     addNotifyForApps(SensorType.NewHumidityType,'Hubidity degree is ${humi.getSensorData()}');
   }
   
  void addNotifyForApps(SensorType sensorType,String message){
     _apps![sensorType]?.forEach((element) {
      element.notifyApp(message);
     });
  }


  



}