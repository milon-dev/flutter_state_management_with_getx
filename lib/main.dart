import 'package:flutter/material.dart';
import 'package:flutter_state_management_with_getx/bindings/root_binding.dart';
import 'package:flutter_state_management_with_getx/screens/counter_screen.dart';
import 'package:get/get.dart';

void main() async{

  /** Initialize all controllers manually....*/
  WidgetsFlutterBinding.ensureInitialized();
  RootBinding().dependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: RootBinding(),
      title: 'Flutter State Management With GetX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const CounterScreen(),
    );
  }
}
