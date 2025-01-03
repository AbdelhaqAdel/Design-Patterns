 //-------------------Weather app -------------------------------------

 import 'devices/app.dart';
import 'devices/DesktopDevice.dart';
import 'devices/MobileDevice.dart';
import 'devices/tablet_device.dart';
import 'sensors/SensorTypes.dart';
import 'sensors/humiditySensor.dart';
import 'sensors/temperatureSensor.dart';
import 'weather_manager.dart';

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
