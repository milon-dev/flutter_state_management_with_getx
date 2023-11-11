import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {

  var counter=0.obs;

  increment() => counter.value++;

  @override
  void onInit() {

    debugPrint("CounterController onInit");

    super.onInit();
  }

}
