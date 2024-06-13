import 'package:flutter/material.dart';
import 'package:flutter_state_management_with_getx/controllers/counter_controller.dart';
import 'package:get/get.dart';

class CounterTwo extends StatelessWidget {
  CounterTwo({Key? key}) : super(key: key);

  final counterController = Get.find<CounterController>();
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan[100],
      padding: const EdgeInsets.all(10.0),
      child: Obx(() => Text(
        counterController.counter.toString() ,
        style: const TextStyle(fontSize: 24.0),
      )),
    );
  }
}