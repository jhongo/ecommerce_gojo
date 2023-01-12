import 'package:flutter/material.dart';

class NavBarService extends ChangeNotifier{

  int _opcInitial = 0;


  int get optGet => _opcInitial;

  set opcSet( int value ){
    _opcInitial = value;
    notifyListeners();
  }


}