import 'package:dart_application_4/coffee_machine.dart';
class Customer extends CoffeMachine {
  void makecoffe(int coffeesize) {
    if (coffeesize == 1) {
      var waterEnough = isWaterEnough(coffeesize);
      var coffeeEnough = isCoffeEnough(coffeesize);
      if (waterEnough==true && coffeeEnough==true) {
        //make coffee
        waterlevel -= 200;
        coffeelevel -= 10;
        print('coffee Ready');
        print('☕ ❤️');
        // turnAvailableOptionOOf();
      }
    } else if (coffeesize == 2) {
      var waterEnough = isWaterEnough(coffeesize);
      var coffeeEnough = isCoffeEnough(coffeesize);
      if (waterEnough && coffeeEnough) {
        //make coffee
        waterlevel -= 300;
        coffeelevel -= 12;
        print('coffee Ready');
        print('☕ ❤️');
        // turnAvailableOptionOOf();
      }
    } else if (coffeesize == 3) {
      var waterEnough = isWaterEnough(coffeesize);
      var coffeeEnough = isCoffeEnough(coffeesize);
      if (waterEnough && coffeeEnough) {
        //make coffee
        waterlevel -= 400;
        coffeelevel -= 15;
        print('coffee Ready');
        print('☕ ❤️');
        // turnAvailableOptionOOf();
      }
    } else {
      print(' water or coffee not Enough ');
    }
  }
}
