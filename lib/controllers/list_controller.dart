import 'package:get/get.dart';

class ListController extends GetxController {
  RxList _list=[].obs;


  RxList get list=>_list;

void setValues(int value){
  _list.add(value);
  print(_list);
}

}
