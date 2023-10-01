// Super Class
class CoffeMachine {
  List coffesize = [1, 2, 3];
  double waterlevel = 1000;
  double coffeelevel = 100;
 // int coffeesize = 0;
  void turnAvailableOptionOn() {
    print('option available');
  }

  void turnAvailableOptionOOf() {
    print('option not available');
  }

  bool isWaterEnough(int coffeesize) {
    if (coffeesize == 1 && waterlevel >= 200 ) {
      return true;
    }else if(coffeesize == 2 && waterlevel >= 300) {
      return true;
    }else if(coffeesize == 3 && waterlevel >= 400) {
      return true;
    } else {
      print("Water not Enough .");
      return false;
    }
  }

  bool isCoffeEnough(int coffeesize) {
    if (coffeesize == 1 && coffeelevel >= 10 ) {
      return true;
    } else if(coffeesize == 2 && coffeelevel >= 12 ) {
      return true;
    }else if(coffeesize == 3 && coffeelevel >= 15 ) {
      return true;
    }else {
      print("Coffee not Enough .");
      return false;
    }
  }
  /*
  * Coffe size 1 : water 200 m , coffe 10gm
  * Coffe size 2 : water 300 m , coffe 12gm
  * Coffe size 3 : water 400 m , coffe 15gm
  */
}