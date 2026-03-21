// $License: NOLICENSE
//--------------------------------------------------------------------------------
/**
  @file $relPath
  @copyright $copyright
  @author R0TIZA
*/

//--------------------------------------------------------------------------------
// Libraries used (#uses)

//--------------------------------------------------------------------------------
// Variables and Constants

//--------------------------------------------------------------------------------
/**
*/
main()
{
  dyn_string LightSensors = makeDynString("BedroomLightSensor", "LivingRoomLightSensor");
  int diaposon = 50;

  int angle = 0;
  while (true){
    for(int SensorIndex = 1; SensorIndex <= dynlen(LightSensors); SensorIndex++){
      string dt_lightSensor_value = "System1:"+LightSensors[SensorIndex]+".Inputs.LightLevel";
      float radians = angle * M_PI / 180.0;
      float newValue = (sin(radians)*diaposon)+50;
      dpSet(dt_lightSensor_value, newValue);
    }
    delay(1);
    angle += 20;
    if(angle == 360) angle = 0;
  }
}
