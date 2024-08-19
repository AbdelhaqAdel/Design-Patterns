 //-------------------Weather app -------------------------------------

 import 'Devices/Applications.dart';
import 'Devices/DesktopDevice.dart';
import 'Devices/MobileDevice.dart';
import 'Devices/TapletDevice.dart';
import 'Sensors/SensorTypes.dart';
import 'Sensors/humiditySensor.dart';
import 'Sensors/temperatureSensor.dart';
import 'WeatherManager.dart';

void main(){
WeatherManager weatherManager=new WeatherManager();

 App newMobileApp=MobileApp('newMobile'); 

 App newDeskTopApp=DesktopApp('newDeskTop'); 

 App newTabletDevice=TabletApp('TapletDevice');

 weatherManager.subscribeAppToSensorTypr(SensorType.NewTempType, newTabletDevice);
 weatherManager.subscribeAppToSensorTypr(SensorType.NewHumidityType,newTabletDevice );

 weatherManager.subscribeAppToSensorTypr(SensorType.NewTempType, newDeskTopApp);
 weatherManager.subscribeAppToSensorTypr(SensorType.NewHumidityType,newDeskTopApp );

 weatherManager.subscribeAppToSensorTypr(SensorType.NewTempType, newMobileApp);
 weatherManager.unSubscribeAppToSensorTypr(SensorType.NewHumidityType,newMobileApp );


 //-------------adding new temp sensor for now--------------------------
 TempSensor tempSensor = TempSensor('35');
 weatherManager.addTempForNow(tempSensor);

 HumiditySensor humSensor = HumiditySensor('20');
 weatherManager.addHumiForNow(humSensor);

}
