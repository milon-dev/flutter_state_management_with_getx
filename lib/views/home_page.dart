import 'package:flutter/material.dart';
import 'package:flutter_state_management_with_getx/controllers/tap_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

  HomePage({Key? key}) : super(key: key);

  TaPController taPController=Get.put(TaPController());

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
            GetBuilder<TaPController>(builder: (controller){
             return  Container(
               height: 40,
               width: double.maxFinite,
               decoration: BoxDecoration(
                 color: Colors.green.withOpacity(.50),
                 borderRadius: BorderRadius.circular(20),
               ),
               child: Center(
                 child: Text(
                   'X= ${controller.x.toString()}',
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
              onTap: ()=>taPController.increaseX(),
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
