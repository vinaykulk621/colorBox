import 'dart:math';
import 'package:flutter/material.dart';

// function to generate random color for the boxes
changeColor() {
  return Colors.primaries[Random().nextInt(Colors.primaries.length)];
}

// function to generate random string
String getRandString() {
  var r = Random();
  const chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890!@#%^&*()-_=+~;:.>,</?]}[{';
  return List.generate(2, (index) => chars[r.nextInt(chars.length)]).join();
}
