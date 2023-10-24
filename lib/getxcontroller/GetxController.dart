import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountController extends GetxController {
  RxInt Num = 0.obs;

  IncreaseNumber() {
    Num.value++;
  }
}

class itemController extends GetxController {
  RxList<String> Fruits = ['Banana', "Mango", "Orange", "Apple"].obs;
  RxList<dynamic> Fruitlist = [].obs;

  additem(value) {
    Fruitlist.add(value);
  }

  removeItem(value) {
    Fruitlist.remove(value);
  }
}
