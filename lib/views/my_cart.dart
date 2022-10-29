import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/my_cart_controller.dart';

class MyCart extends StatelessWidget {
  MyCart({Key? key}) : super(key: key);

  MyCartController cartController=Get.put(MyCartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30.0),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text(
                  'Books',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.amber,
                  ),
                ),

                Expanded(child: Container()),

                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.greenAccent,
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () => null,
                  ),
                ),

                const SizedBox(width: 40,),

                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.redAccent,
                  ),
                  child:IconButton(
                    icon: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),onPressed: ()=>null,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
