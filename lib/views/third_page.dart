import 'package:flutter/material.dart';
import 'package:flutter_state_management_with_getx/controllers/list_controller.dart';
import 'package:get/get.dart';

import '../controllers/tap_controller.dart';

class ThirdPage extends StatelessWidget {
  ThirdPage({Key? key}) : super(key: key);
  TapController tapController=Get.find();
  ListController listController=Get.put(ListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Page"),
        leading: IconButton(
          onPressed: ()=> Get.back(),
          icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(12),
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (_){
              return Container(
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
            const SizedBox(height: 8),
            GetX<TapController>(builder: (_){
              return Container(
                height: 40,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(.50),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'Y= ${tapController.y.value.toString()}',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            }),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: ()=>tapController.increaseY(),
              child:  Container(
                height: 60,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(.70),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    'Increase Y',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: ()=>tapController.decreaseY(),
              child:  Container(
                height: 60,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(.70),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    'Decrease Y',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            Obx(() => Container(
              height: 40,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.redAccent.withOpacity(.70),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Total value = ${tapController.z.value.toString()}',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: ()=>tapController.totalXY(),
              child:  Container(
                height: 60,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.redAccent.withOpacity(.70),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    'Total X+Y',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: ()=>listController.setValues(tapController.z.value),
              child:  Container(
                height: 60,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.purpleAccent.withOpacity(.70),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    'Add List',
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
