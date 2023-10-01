import 'dart:io';

import 'package:dart_application_4/admin.dart';
import 'package:dart_application_4/coffee_machine.dart';
import 'package:dart_application_4/customer.dart';

Future<String> asyncFunction(){
  return Future.delayed(Duration(seconds:3),()=>"      ");
}
void main()async {
  
  CoffeMachine m = CoffeMachine();
  Admin a=Admin();
  Customer C = Customer();
  m.turnAvailableOptionOn();
 await asyncFunction();
  print(
      "******************* Welcome to Coffe Machine System. *******************");
  print("please Select a choice :");
  print("1 - Admin .");
  print("2 - Customer .");
  String choice = stdin.readLineSync()!;
  if (choice == 1.toString() || choice == "Admin" || choice == "admin") {
    String? check;
   do {
    print("enter operation :");
    print("1 - AddCoffee.");
    print("2 - AddWater.");
    String operation = stdin.readLineSync()!;
    if (operation == 1.toString() || operation == "AddCoffee" || operation == "addcoffee") {
      print("Enter the amount:");
      double coffeeAmount = double.parse(stdin.readLineSync()!);
      a.addcoffee(coffeeAmount);
      print("operation done");
      print("coffe level is : ${m.coffeelevel+coffeeAmount}");
      print("Another operation (yes/no) ? ");
      check = stdin.readLineSync()!;
    } else if(operation == 2.toString() || operation == "AddWater" || operation == "addwater") {
        print("Enter the amount:");
      double waterAmount = double.parse(stdin.readLineSync()!);
      a.addWater(waterAmount);
      print("operation done");
      print("water level is : ${m.waterlevel+waterAmount}");
      print("Another operation (yes/no) ? ");
      check = stdin.readLineSync()!;
    }
   } while (check!="no");
    await asyncFunction();
    m.turnAvailableOptionOOf();
  } else if (choice == 2.toString() || choice == "Customer" || choice == "customer") {
    String check;
    do {
      print("enter coffee size :");
    int coffeSize = int.parse(stdin.readLineSync()!);
    C.makecoffe(coffeSize);
    print("take another coffee ? ");
     check = stdin.readLineSync()!;
    } while (check!="no");
    await asyncFunction();
    m.turnAvailableOptionOOf();
  }
}
