import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dart:developer' as devlog;

class ColorController extends GetxController {
  var counter = 1;
  final int duration = 100;
  final color = Colors.amber;

  var container1 = Colors.grey.obs;
  var container2 = Colors.grey.obs;
  var container3 = Colors.grey.obs;
  var container4 = Colors.grey.obs;

  get color1 => container1.value;
  get color2 => container2.value;
  get color3 => container3.value;
  get color4 => container4.value;

  set color1(value) => container1.value = value;
  set color2(value) => container2.value = value;
  set color3(value) => container3.value = value;
  set color4(value) => container4.value = value;

  animate() async {
    Timer.periodic(Duration(milliseconds: duration), (Timer t) {
      devlog.log('Value: $counter', name: 'COUNTER');
      if (counter <= 4) {
        giveColor(counter);
      } else {
        counter = 0;
      }
      counter++;
    });
  }

  void giveColor(int loc) {
    switch (loc) {
      case 1:
        clear();
        color1 = color;
        break;
      case 2:
        clear();
        color2 = color;
        break;
      case 3:
        clear();
        color3 = color;
        break;
      case 4:
        clear();
        color4 = color;
        break;
    }
  }

  void clear() {
    color1 = Colors.grey;
    color2 = Colors.grey;
    color3 = Colors.grey;
    color4 = Colors.grey;
  }
}
