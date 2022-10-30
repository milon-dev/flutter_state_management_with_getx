import 'package:flutter/material.dart';
import 'package:flutter_state_management_with_getx/views/third_page.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
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
            GestureDetector(
              onTap: ()=>Get.to(ThirdPage()),
              child:  Container(
                height: 60,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(.70),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    'Go To Third',
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
