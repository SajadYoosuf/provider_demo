import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int counter=0;
  change_counter(){
    counter++;
    notifyListeners();
  }
}
