import 'package:dart_application_4/coffee_machine.dart';

class Admin extends CoffeMachine {
  void addWater(double water) {
    waterlevel += water;
  }

  void addcoffee(double coffee) {
    coffeelevel += coffee;
  }
}