import 'package:flutter/material.dart';
import 'package:flutter_state_management_with_getx/controllers/counter_controller.dart';
import 'package:get/get.dart';

class CounterOne extends StatelessWidget {
  CounterOne({Key? key}) : super(key: key);

  final counterController = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[100],
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Obx(
                () => Text(
                  counterController.counter.toString(),
                  style: const TextStyle(fontSize: 40.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () => counterController.increment(),
                  backgroundColor: Colors.green,
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () => counterController.decrement(),
                  backgroundColor: Colors.red,
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
