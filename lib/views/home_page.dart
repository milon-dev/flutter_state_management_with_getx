import 'package:flutter/material.dart';
import 'package:flutter_state_management_with_getx/views/second_page.dart';
import 'package:get/get.dart';
import 'package:flutter_state_management_with_getx/controllers/tap_controller.dart';
import 'package:flutter_state_management_with_getx/views/first_page.dart';


class HomePage extends StatelessWidget {

  HomePage({Key? key}) : super(key: key);

  TapController tapController=Get.put(TapController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(12),
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (_){
             return  Container(
               height: 40,
               width: double.maxFinite,
               decoration: BoxDecoration(
                 color: Colors.green.withOpacity(.50),
                 borderRadius: BorderRadius.circular(20),
               ),
               child: Center(
                 child: Text(
                   'X= ${tapController.x.toString()}',
                   style: const TextStyle(
                     fontSize: 16,
                     color: Colors.white,
                   ),
                 ),
               ),
             );
           }),
            SizedBox(height: 4),
            GestureDetector(
              onTap: ()=>tapController.increaseX(),
              child:  Container(
                height: 60,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(.70),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    'Increase X',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            GestureDetector(
              onTap: ()=>Get.to(FirstPage()),
              child:  Container(
                height: 60,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(.70),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    'Go To First',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            GestureDetector(
              onTap: ()=>Get.to(SecondPage()),
              child:  Container(
                height: 60,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(.70),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'Go To Second',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            GestureDetector(
              onTap: ()=>null,
              child:  Container(
                height: 60,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(.70),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'Tab',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
