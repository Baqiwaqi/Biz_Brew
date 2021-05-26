import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

class Validatefunctions {
  bool validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    return (!regex.hasMatch(value)) ? true : false;
  }

  Color coffeeColor(String strength) {
    if (strength == 'light') {
      return Colors.brown[200];
    }
    if (strength == "medium") {
      return Colors.brown[500];
    }
    if (strength == "dark") {
      return Colors.brown[800];
    }
    return null;
  }

  bool validatePassword(String password, String repeatPassword) {
    if (password == repeatPassword) {
      return false;
    }
    return true;
  }
  
  String checkMilk(String milk) {
    if(milk != "no"){
      return "and would like some milk in his coffee.";
    }
    return "and don't want any milk in his coffee.";
  }

}
