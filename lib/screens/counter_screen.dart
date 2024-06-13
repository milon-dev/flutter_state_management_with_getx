import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';
import '../widgets/counter_one.dart';
import '../widgets/middle_container.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final counterController = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    print("======================= CounterScreen build ======================");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Managing state with Getx'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.lightGreen[600],
              padding: const EdgeInsets.all(20.0),
              child: const Text(
                'Managing state with Getx',
                style: TextStyle(fontSize: 22.0,color: Colors.white),
              ),
            ),
            const SizedBox(height: 20.0),
             CounterOne(),
            const SizedBox(height: 10.0),
            const MiddleContainer(),
            const SizedBox(height: 10),
            Container(
              color: Colors.teal.withOpacity(0.2),
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child:  Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(10.0),
                        child: Obx(() =>  Text(
                          counterController.actionName.value,
                          style: const TextStyle(fontSize: 24.0),
                        )),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ResetButton(),
          ],
        ),
      ),
    );
  }
}

class ResetButton extends StatelessWidget {
  final counterController = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    print("======================= ResetButton build ======================");
    return ElevatedButton(
      onPressed: () => counterController.reset(),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple,
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 14),
        textStyle: const TextStyle(
          fontSize: 16,
        ),
      ),
      child: const Text('Reset Counter',style: TextStyle(color: Colors.white),),
    );
  }
}
