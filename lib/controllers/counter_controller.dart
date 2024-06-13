import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {

  final counter=0.obs;
  final actionName="No Action".obs;

  increment() {
    counter.value++;
    actionName.value="Add";
  }

  decrement() {
    counter.value--;
    actionName.value="Sub";
  }

  reset() {
    counter.value=0;
    actionName.value="Reset";
  }

  @override
  void onInit() {
    super.onInit();
  }

}
