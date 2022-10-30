import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/tap_controller.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);

  TapController tapController=Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
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

            const SizedBox(height: 4),
            GestureDetector(
              onTap: ()=>tapController                .decreaseX(),
              child:  Container(
                height: 60,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(.70),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    'Decrease X',
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
