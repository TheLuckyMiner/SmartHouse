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

int DIAPOSON = 50;

main()
{
  int angle = 0;
  while (true){
    changeValue("System1:BedroomLightSensor.Inputs.LightLevel", angle);
    changeValue("System1:LivingRoomLightSensor.Inputs.LightLevel", angle);
    delay(1);
    angle += 5;
    if(angle == 360) angle = 0;
  }
}

void changeValue(string dp, float angle){
  float radians = angle * M_PI / 180.0;
  float newValue = (sin(radians)*DIAPOSON)+DIAPOSON;
  dpSet(dp, newValue);
}
