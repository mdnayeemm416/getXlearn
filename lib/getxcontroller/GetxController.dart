import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountController extends GetxController {
  RxInt Num = 0.obs;

  IncreaseNumber() {
    Num.value++;
  }
}
