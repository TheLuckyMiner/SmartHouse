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

//Инициализация константных значений
float DELAY = 60.0;

main()
{
  //Бесконечный цикл изменения показаний датчиков влажности
  while(true){
    changeValue("System1:BathroomLeakSensor.Inputs.IsLeak");
    changeValue("System1:KitchenLeakSensor.Inputs.IsLeak");
    delay(DELAY);
  }
}

//Функция изменения показаний датчика влажности
private void changeValue(string dp){
  //Получение показаний дачика
  bool value;
  dpGet(dp, value);

  //Установка новых показаний датчика
  dpSet(dp, !value);
}
