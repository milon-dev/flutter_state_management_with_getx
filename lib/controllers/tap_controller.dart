import 'package:get/get.dart';

class TapController extends GetxController {

  int _x = 0;
  RxInt _y = 0.obs;
  RxInt _z = 0.obs;

  int get x => _x;
  RxInt get y=>_y;
  RxInt get z=>_z;

  void increaseX() {
    _x++;
    update();
  }

  void decreaseX() {
    _x--;
    update();
  }

  void increaseY() {
    _y.value++;
  }

  void decreaseY() {
    _y.value--;
  }

  void totalXY() {
   _z.value =_x  + _y.value;
  }

}
