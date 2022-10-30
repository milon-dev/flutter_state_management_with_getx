import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_state_management_with_getx/views/home_page.dart';
import '../helper/int_controllers.dart' as di;

void main() async{

  /// Initialize all controllers manually....
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:HomePage(),
    );
  }
}
