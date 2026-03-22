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
float DELAY = 60.0;

main()
{
  while(true){
    changeValue("System1:BathroomLeakSensor.Inputs.IsLeak");
    changeValue("System1:KitchenLeakSensor.Inputs.IsLeak");
    delay(DELAY);
  }
}

private void changeValue(string dp){
  bool value;
  dpGet(dp, value);
  dpSet(dp, !value);
}
