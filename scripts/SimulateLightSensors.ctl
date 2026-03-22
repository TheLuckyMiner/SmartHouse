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
int DIAPOSON = 50;
float DELAY = 1.0;

main()
{
  //Инициализация стартового значения угла для функции sin()
  int angle = 0;

  //Бесконечный цикл изменения показаний датчиков освещенности
  while (true){
    changeValue("System1:BedroomLightSensor.Inputs.LightLevel", angle);
    changeValue("System1:LivingRoomLightSensor.Inputs.LightLevel", angle);
    delay(DELAY);

    //Изменение значения угла
    angle += 5;
    if(angle == 360) angle = 0;
  }
}

//Функция изменения показаний датчика освещенности
void changeValue(string dp, float angle){
  //Перевод значений угла из градусов в радианы
  float radians = angle * M_PI / 180.0;

  //Получение нового значения датчика освещенности
  float newValue = (sin(radians)*DIAPOSON)+DIAPOSON;

  //Установка новых показаний датчика
  dpSet(dp, newValue);
}
