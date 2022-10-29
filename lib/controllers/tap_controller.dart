import 'package:get/get.dart';

class TaPController extends GetxController{
  int _x=0;
  int get x=>_x;

  void increaseX(){
    _x++;
    update();
}

}